import internetarchive

def main(collection_name, path, language):

    search  = internetarchive.search_items(f'collection:{collection_name}')

    # Declares an array to store the identifiers of the items in the collection
    identifiers = []
    
    counter = 0

    for result in search:
        
        # print(result['identifier'])
        item = internetarchive.get_item(result['identifier'])
        # item_id = internetarchive.Item(result['identifier'])
        
        counter+=1

        if 'mediatype' in item.metadata and item.metadata['mediatype'] == 'texts':
            if 'language' in item.metadata and item.metadata['language'] == language:
                for k, v in item.metadata.items():
                    print(f"{k}:{v}")
                    
                # Save the identifier in an array
                identifiers.append(result['identifier'])
                
                item.download(glob_pattern='*pdf', verbose=True, no_directory = True)
                
                print("---"*50)
                
        print(counter, " - ",identifiers)
        
if __name__ == "__main__":
    
    list_of_libs = ['fringe', ]
    
    print('\n'*150)

    main('magazine_rack', './', 'Portuguese')
    # main('fringe', './', 'Portuguese')
    
