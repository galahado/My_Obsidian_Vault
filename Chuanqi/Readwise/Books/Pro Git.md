# Pro Git

![rw-book-cover](https://readwise-assets.s3.amazonaws.com/media/reader/parsed_document_assets/196669190/2AyMAEfzOP3a7qSiP3tJAWRqxYV4Na4aMfilj42fWLg-item_TQh76Sj.png)

## Metadata
- Author: [[Scott Chacon]]
- Full Title: Pro Git
- Category: #books
- Summary: Git allows you to manage changes in your files through staging, committing, and merging. You can pull updates from a remote server and revise your commit history easily before sharing your work. Additionally, Git enables you to bundle data into a single file for easy transfer when network access is limited.

## Highlights
- Git has three main states that your files can reside in: *modified*, *staged*, and *committed*:
  • Modified means that you have changed the file but have not committed it to your database yet.
  • Staged means that you have marked a modified file in its current version to go into your next commit snapshot.
  • Committed means that the data is safely stored in your local database. ([View Highlight](https://read.readwise.io/read/01j39a1ktq00p79g3js6zyw9fs))
- ![](https://readwise-assets.s3.amazonaws.com/media/reader/parsed_document_assets/196669190/JV11E6moE3Jw4KGYX4X3MfCSzVE7-iddGlLAf2hd7qo-item_4Vi3uhU.png) ([View Highlight](https://read.readwise.io/read/01j39a5204snj3wd47h7hracxp))
- The working tree is a single checkout of one version of the project. These files are pulled out of the compressed database in the Git directory and placed on disk for you to use or modify. ([View Highlight](https://read.readwise.io/read/01j39b6q6hkehykhwxj82vax3x))
- The staging area is a file, generally contained in your Git directory, that stores information about what will go into your next commit. Its technical name in Git parlance is the “index”, but the phrase “staging area” works just as well. ([View Highlight](https://read.readwise.io/read/01j39b90abpsmnrewermv9155s))
- The Git directory is where Git stores the metadata and object database for your project. This is the most important part of Git, and it is what is copied when you *clone* a repository from another computer. ([View Highlight](https://read.readwise.io/read/01j39b9tk7yaq94vqra7g0ctj9))
- If a particular version of a file is in the Git directory, it’s considered *committed*. If it has been modified and was added to the staging area, it is *staged*. And if it was changed since it was checked out but has not been staged, it is *modified*. ([View Highlight](https://read.readwise.io/read/01j39cmhpc9f7arn6qber41kke))
- ![](https://readwise-assets.s3.amazonaws.com/media/reader/parsed_document_assets/196669190/yR6nvH8W-GIxf7k6LoZ8q3MN8V7flkmiYY6juluy_-w-item_vsOaMOC.png) ([View Highlight](https://read.readwise.io/read/01j3awj6x903225hrt728anr52))
- It may be helpful to think of it more as “add precisely this content to the next commit” rather than “add this file to the project”. ([View Highlight](https://read.readwise.io/read/01j3axdjkd0w446dstgky65612))
- If you run `git status -s` or `git status --short` you get a far more simplified output from the command:
  $ git status -s
  M README
  MM Rakefile
  A lib/git.rb
  M lib/simplegit.rb
  ?? LICENSE.txt ([View Highlight](https://read.readwise.io/read/01j3ay6w7wjarw40f68k21cnw4))
- There are two columns to the output — the left-hand column indicates the status of the staging area and the right-hand column indicates the status of the working tree. ([View Highlight](https://read.readwise.io/read/01j3aybnaa4em4gyyg9s3bf23w))
