## Using CollectionView 

*Class UICollectionView* 
> An object that manages an ordered collection of data items and presents them using customizable layouts.<br/> When you add a collection view to your user interface, your app's main job is to manage the data associated with that collection view. The collection view gets its data from the data source object, stored in the collection view’s dataSource property. For your data source, you can use a UICollectionViewDiffableDataSource object, which provides the behavior you need to simply and efficiently manage updates to your collection view's data and user interface. Alternatively, you can create a custom data source object by adopting the UICollectionViewDataSource protocol.
Data in the collection view is organized into individual items, which you can group into sections for presentation. An item is the smallest unit of data you want to present. For example, in a photos app, an item might be a single image. The collection view presents items onscreen using a cell, which is an instance of the UICollectionViewCell class that your data source configures and provides.[^1]
<br/>
I developed app that lists movies. That's why I created class called Flimler. It includes movie's name, movie's id, image, director's name and price. Besides It can navigate to detail page.

### App's Screenshot 

<p float="left">
<img width="300" alt="Screenshot 2022-03-09 at 21 48 22" src="https://user-images.githubusercontent.com/36795459/157622439-622b2a76-515a-48d8-82db-66a448f5a1da.png">
<img width="300" alt="Screenshot 2022-03-10 at 11 16 13" src="https://user-images.githubusercontent.com/36795459/157622430-6cec5b3a-fe35-4f99-80fd-b3fc841679b8.png">
</p>


[^1]: Apple Developer Documentation


