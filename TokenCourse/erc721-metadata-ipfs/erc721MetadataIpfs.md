In this section, we will create our metadata and store it in a decentralized way.

IPFS ( InterPlanetary File System) is a peer-to-peer network for storing files in a distributed way. Pinata.cloud is a pinning service that allows users to easily host files on the IPFS network.

We want to host our JSON files with the metadata and our images on IPFS. 

### Create Image Folder
In this example, we will create metadata for three tokens so we created three images that we store in a folder.
```
geo-img
├── geo_1.png
├── geo_2.png
├── geo_3.png
```

### Register on Pinata
Now we want to host these images somewhere so we can point to them in the metadata of our tokens. Let's do it in a decentralized way and use Pinata to host them on IPFS.

First you need an account on Pinata. Go to <a href="https://app.pinata.cloud/register" target="_blank">Pinata.cloud</a> and create an account. On Pinata you can upload up to 1 GB of data for free.

Once you have signed up, you should be in the Pin Manager view.

<img src="https://i.imgur.com/yKpD65m.png" alt="Pin Manager Pinata" width="300"/>


### Upload Images to IPFS
Click on the upload button and upload the folder with your images.
Once you've uploaded your folder, you should see the name of your folder and a CID (content identifier) associated with it. If the content in the folder changes, the CID will also change.

To access your folder on IPFS enter this address "https://ipfs.io/ipfs/" and add your CID. For our current example you can access your folder like this:
<a href="https://ipfs.io/ipfs/QmTJok2tju9zstjtAqESdZxTiUiFCBAyApHiDVj4maV75P" target="_blank">
    https://ipfs.io/ipfs/QmTJok2tju9zstjtAqESdZxTiUiFCBAyApHiDVj4maV75P
</a>

You can access a specific image like this:
<a href="https://ipfs.io/ipfs/QmTJok2tju9zstjtAqESdZxTiUiFCBAyApHiDVj4maV75P/geo_1.png" target="_blank">
    https://ipfs.io/ipfs/QmTJok2tju9zstjtAqESdZxTiUiFCBAyApHiDVj4maV75P/geo_1.png
</a>

### Create JSON files
We create another folder where we store three JSON files.
```
geo-json
├── 0
├── 1
├── 2
```

Inside the JSON files create the metadata for the tokens, like name, description, and image.
For the image URL, we are going to use the URL of our images on IPFS. You can add additional data if you like, in this example, we added some unique attributes for each token.

This is how the JSON for the first token could look like:
```
{
    "name": "Geometry#0",
    "description": "Geometry is an NFT collection for educational purposes.",
    "image": "https://ipfs.io/ipfs/QmTJok2tju9zstjtAqESdZxTiUiFCBAyApHiDVj4maV75P/geo_1.png
",
    "attributes": [
        { "trait_type": "background", "value": "cyan" },
        { "trait_type": "color", "value": "red" },
        { "trait_type": "shape", "value": "circle" }
    ]
}
```

This is how the JSON for the second token could look like:
```
{
    "name": "Geometry#1",
    "description": "Geometry is an NFT collection for educational purposes.",
    "image": "https://ipfs.io/ipfs/QmTJok2tju9zstjtAqESdZxTiUiFCBAyApHiDVj4maV75P/geo_2.png",
    "attributes": [
        { "trait_type": "background", "value": "magenta" },
        { "trait_type": "color", "value": "green" },
        { "trait_type": "shape", "value": "square" }
    ]
}
```

As shown above, the folder in this example is called "geo-json". Inside this folder, we have three JSON files. 
The first JSON file is called "0", the second JSON file is called "1", and the third JSON file is called "2".

Make sure that your JSON files don't have a file ending and are just called like their corresponding tokenIds.
In the pin manager on pinata.cloud click on the upload button and upload the folder with your JSON files.

To access your folder on IPFS enter this address "https://ipfs.io/ipfs/" and add your CID. 
For our current example you can access your folder like this:
<a href="https://ipfs.io/ipfs/QmVrsYxXh5PzTfkKZr1MfUN6PotJj8VQkGQ3kGyBNVKtqp" target="_blank">
    https://ipfs.io/ipfs/QmVrsYxXh5PzTfkKZr1MfUN6PotJj8VQkGQ3kGyBNVKtqp
</a>
This will become our baseURI.

You can access a specific JSON file then by just adding a slash and the tokenId like this:
<a href="https://ipfs.io/ipfs/QmVrsYxXh5PzTfkKZr1MfUN6PotJj8VQkGQ3kGyBNVKtqp/0" target="_blank">
    https://ipfs.io/ipfs/QmVrsYxXh5PzTfkKZr1MfUN6PotJj8VQkGQ3kGyBNVKtqp/0
</a>

In the contract now replace the baseURI with your own baseURI, which in this example consists of the URL 
"https://ipfs.io/ipfs/", the CID containing the JSON files, and a slash at the end "/".

An individual tokenURI can now be created by just adding the tokenId to the baseURI as we did when 
accessing the JSON file in the example above.
