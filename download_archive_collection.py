import internetarchive
import shutil
import os
import re
import pandas as pd
import tabulate

################################################## ARCHIVE FUNCTIONS ###########################################################
def collection_downloader(querry, path, max_items):    
    
    search = internetarchive.search_items(querry)
    
    # Declares an array to store the identifiers of the items in the collection
    identifiers = []
    
    # Initiate the DataFrame
    collection_querry = pd.DataFrame()
    
    # Counters
    counter = 0
    
    print("\n\n")
    print_line()
    print(f"Querry: {querry}")
    print(f"Path: {path}")
    print(f"Results Count: {search.num_found}")
    
    for result in search.iter_as_results():
        
        item = internetarchive.get_item(result['identifier'])
        counter_string = equalize_char_number(str(counter), str(search.num_found))
        
        # # Print the item entire metadata        
        # for k, v in item.metadata.items():
        #     print(f"{k}:{v}")
            
        # Get the Metadata
        index = counter_string
        identifier = str(item.identifier)
        title = str(item.metadata['title'])
        
        # Initialize variables for optional metadata
        collection = mediatype = uploader = language = subject = publicdate = None
        addeddate = date = creator = ocr_converted = year = None
        ocr_detected_lang = page_number_confidence = originalurl = publisher = ppi = None
        source = director = runtime = format = closed_captioning = description = None
        
        if 'collection'             in item.metadata: collection = str(item.metadata['collection'])
        if 'mediatype'              in item.metadata: mediatype = str(item.metadata['mediatype'])
        if 'uploader'               in item.metadata: uploader = str(item.metadata['uploader'])
        if 'language'               in item.metadata: language = str(item.metadata['language'])
        if 'subject'                in item.metadata: subject = str(item.metadata['subject'])
        if 'publicdate'             in item.metadata: publicdate = str(item.metadata['publicdate'])
        if 'addeddate'              in item.metadata: addeddate = str(item.metadata['addeddate'])
        if 'date'                   in item.metadata: date = str(item.metadata['date'])
        if 'creator'                in item.metadata: creator = str(item.metadata['creator'])
        if 'ocr_converted'          in item.metadata: ocr_converted = str(item.metadata['ocr_converted'])
        if 'year'                   in item.metadata: year = str(item.metadata['year'])
        if 'ocr              '      in item.metadata: ocr_detected_lang = str(item.metadata['ocr_detected_lang'])
        if 'page_number_confidence' in item.metadata: page_number_confidence = str(item.metadata['page_number_confidence'])
        if 'originalurl'            in item.metadata: originalurl = str(item.metadata['originalurl'])
        if 'publisher'              in item.metadata: publisher = str(item.metadata['publisher'])
        if 'ppi'                    in item.metadata: ppi = str(item.metadata['ppi'])
        if 'source'                 in item.metadata: source = str(item.metadata['source'])
        if 'director'               in item.metadata: director = str(item.metadata['director'])
        if 'runtime'                in item.metadata: runtime = str(item.metadata['runtime'])
        if 'format'                 in item.metadata: format = str(item.metadata['format'])
        if 'closed_captioning'      in item.metadata: closed_captioning = str(item.metadata['closed_captioning'])
        
        if 'description' in item.metadata:
            description = item.metadata['description']
            if isinstance(description, list):
                description = ' '.join(description)
            # Remove HTML tags
            description = re.sub('<[^<]+?>', '', description)
            # Remove new lines
            description = description.replace('\n', ' ')
            # print(f"Description: {description}")
            
        Concluded_percentage = str(round((counter / search.num_found) * 100, 2))
        
        if Concluded_percentage == '0.0':
            print("THe first one: ", Concluded_percentage)
            Concluded_percentage = '000.01'
        
        # If concluded_percentage has less than 6 digits, add leading zeros
        if len(Concluded_percentage) < 6:
            Concluded_percentage = Concluded_percentage.zfill(6)
        

        line = f"Item {counter_string} of {search.num_found} found. ({Concluded_percentage}%) -> Title: {title} | Mediatype: {mediatype}"
        
        # Add the current item metadata to the collection
        new_Row = pd.Series({
            'Index': index,
            'Identifier': identifier,
            'Title': title,
            'Collection': collection,
            'Media Type': mediatype,
            'Uploader': uploader,
            'Language': language,
            'Subject': subject,
            'Publicdate': publicdate,
            'Addeddate': addeddate,
            'Date': date,
            'Creator': creator,
            'Ocr_converted': ocr_converted,
            'Year': year,
            'Ocr Detected Lang': ocr_detected_lang,
            'Page Number Confidence': page_number_confidence,
            'Original Url': originalurl,
            'Publisher': publisher,
            'Ppi': ppi,
            'Description': description
            })
        
        # Add the current item metadata to the collection
        collection_querry = pd.concat([collection_querry, new_Row.to_frame().T], ignore_index=True)
        
        # Print the line
        print(line)

        # # Download the item
        # item.download(glob_pattern='*pdf', verbose=True, no_directory=True)

        counter += 1
        if counter >= max_items: break
    return collection_querry

################################################## AUXILIAR FUNCTIONS ##########################################################   
def equalize_char_number(smaller_number, bigger_number):
    # Add zeros to the smaller number until it has the same number of characters as the bigger number
    while len(smaller_number) < len(bigger_number):
        smaller_number = '0' + smaller_number
    return smaller_number

def print_line():
    # Get the width of the screen
    screen_width = shutil.get_terminal_size().columns
    # Print a separator
    print("-" * screen_width)

def clear_screen():
    # Call cls in Windows CMD
    if os.name == 'nt':
        os.system('cls')
    # Call cls in Linux Terminal
    else:
        os.system('clear')

def clear_querry_name(querry_name):
    
    # Clear Querry Name
    querry_name = querry.replace('collection:', '')
    querry_name = querry_name.replace('languageSorter:', '')
    querry_name = querry_name.replace('mediatype:', '')
    querry_name = querry_name.replace('uploader:', '')
    querry_name = querry_name.replace(' ', '')
    
    # Remove everything after @ in the querry name if it exists
    if '@' in querry_name:
        querry_name = querry_name.split('@')[0]
        
    return querry_name
    
def savecollection_to_excel(collection, file_path):
    
    # Save the collection to an excel file
    collection.to_excel(f"{querry_name}.xlsx", index=False)
    
    print(f"Saving the Excel file to: {file_path}")
    
    excel_writer = pd.ExcelWriter(file_path, engine='xlsxwriter')
    
    collection.to_excel(excel_writer, sheet_name='Collection', index=False)
    
    print("Saving the Excel file...")
    
    excel_writer._save()

def clear_dataframe(collection):
    
    # If a collumns is empty, remove it
    for column in collection.columns:
        if collection[column].isnull().all():
            collection = collection.drop(column, axis=1)
    
    return collection

################################################## MAIN LOOP ################################################################### 
if __name__ == "__main__":
    
    # item = internetarchive.get_item('FactsAboutLuther_201903')
    # for k, v in item.metadata.items():
    #     print(f"{k}:{v}")
    # input("Press Enter to continue...")
    
    clear_screen()
    
    
    already_skraped = [
        f'collection:fringe languageSorter:Portuguese mediatype:texts',
        f'collection:magazine_rack languageSorter:Portuguese mediatype:texts',
        f'collection:pulpmagazinearchive languageSorter:Portuguese mediatype:texts',
        f'uploader:gyouness@fellow-me.pw mediatype:texts',
        f'collection:Film_Noir mediatype:movies',
        f'collection:SciFi_Horror mediatype:movies',
        f'uploader:rynking78@gmail.com mediatype:texts subject:comics',
        f'uploader:raphaelborgy@gmail.com mediatype:texts',
        f'uploader:historischerrevisionismus@gmail.com',
        f'collection:television_inbox mediatype:movies languageSorter:Portuguese',
        f'collection:imageboard_datasets',
        f'uploader:ruijpt@yahoo.com',
        f'uploader:librorumsanctorum@gmail.com mediatype:texts',
        f'collection:fringe languageSorter:English mediatype:texts', 
        f'uploader:igor.mueller@tutanota.com',
        f'uploader:entyne16@gmx.us',

    ]

    querries = [
                # ---------------------------------------------------------------------------------------------------------------------------------------------------------------
                # f'collection:magazine_rack languageSorter:English mediatype:texts',                     # Magazine Rack [English]            Results Count: 183.218
                # f'collection:pulpmagazinearchive languageSorter:English mediatype:texts',               # Pulp Magazine Archive [English]    Results Count:  13.744
                # ---------------------------------------------------------------------------------------------------------------------------------------------------------------
                # f'collection:altcensored',                                                              # Alt Censored                       Results Count: 781.895
                # ---------------------------------------------------------------------------------------------------------------------------------------------------------------
                f'collection:opensource_movies languageSorter:Portuguese',                              # OpenSource Movies [Portuguese]     Results Count:  13.250
                # f'collection:opensource_movies languageSorter:English',                                 # OpenSource Movies [English]        Results Count: 293.266
                # ---------------------------------------------------------------------------------------------------------------------------------------------------------------
                # f'collection:television_inbox mediatype:movies languageSorter:English',                 # Unsorted TV Programs [English]     Results Count:  12.271
                ]    


    # Iterate through the querries
    for querry in querries:
        
        collection = collection_downloader(querry, './', 999999999)

        querry_name = clear_querry_name(querry)
        
        file_path = f"C:\\Users\\gabriel.miranda\\Desktop\\Projetos\\Personal Github\\collection_downloaded\\{querry_name}.xlsx"

        collection = clear_dataframe(collection)
        
        savecollection_to_excel(collection, file_path)


# https://archive.org/details/the-terence-mckenna-pdf-library/Food%20of%20the%20Gods%20by%20Terence%20McKenna/
