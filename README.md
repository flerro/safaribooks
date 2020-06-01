# SafariBooks
Download and generate *EPUB* from [*Safari Books Online*](https://www.safaribooksonline.com) library.  
This is only for *personal* and *educational* purpose.  
Before any usage please read the *O'Reilly*'s [Terms of Service](https://learning.oreilly.com/terms/).  

Original project by *Lorenzo Di Fuccia* is [available here](https://github.com/lorenzodifuccia/safaribooks)


## Overview:
  * [Requirements & Setup](#requirements--setup)
  * [Usage](#usage)
  * [Example: Download *Test-Driven Development with Python, 2nd Edition*](#download-test-driven-development-with-python-2nd-edition)
  * [Example: Use or not the `--no-kindle` option](#use-or-not-the---no-kindle-option)

## Requirements & Setup:
```shell
$ git clone git@github.com:flerro/safaribooks.git safaribooks-my
Cloning into 'safaribooks'...

$ cd safaribooks-my/
$ pip3 install -r requirements.txt
```  
Add credentials to `.env`

  SAFARI_USER=myuser
  SAFARI_PASSW=mypass
    
## Usage:

### Using Docker

Build:

  source .env && docker build --build-arg "USER=$SAFARI_USER" --build-arg "PASSW=$SAFARI_PASSW"  -t safaribooks .

Download a book:  

  ???


### Without docker 

Run via the shell script:

```shell
$ safaribooks-my/book.sh XXXXXXXXXXXXX
```

The ID is the digits that you find in the URL of the book description page:  
`https://www.safaribooksonline.com/library/view/book-name/XXXXXXXXXXXXX/`  
Like: `https://www.safaribooksonline.com/library/view/test-driven-development-with/9781491958698/`  
  
# Other Dependencies

Bin scripts depennds on the following tools:

- [`rclone`](https://rclone.org/) to sync data to GDrive
- [`fd`](https://github.com/sharkdp/fd) to find file faster  
  

