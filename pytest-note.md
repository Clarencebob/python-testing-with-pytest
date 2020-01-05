
#Using pytest to write a unit test in Python 

# Table of Contents
0. [Environment](#Environment)
1. [About pytest](#pytest)
  1. [A quick introduction of pytest](#A Quick Introduction of pytest)
  2. [useful options of pytest](#useful options of pytest) 
2. [unittest.mock](#unittest.mock)
  1. [How to quickly use unittest.mock](#How to quickly use unittest.mock)
  2. [auto-speccing](#auto-speccing)
  3. [seal](#sealing in mock)
3. [tox](#tox)
  1. [A quick introduction of tox](#A Quick Introduction of tox)
  2. [tox.ini](#tox.ini)
  3. [options of tox](#options of tox) 
4. [Reference](#Reference)
4. [Reference in Japanese](#Reference in Japanese)


## Environment

In this article, I used the following 
* MacOS 10.15.2 or Linux 2 
* Python 3.7
* unittest.mock (included in the Python)
* pytest 5.3.2
* tox 3.14.2

## About pytest

* One the the most popular Python modules for unit tests
* 


### Builtin fixtures 

* The tmpdir and tmpdir_factory builtin fixtures 

  * used to create a temporary file system directory before test runs and remove the directory when finished. 
  * tmpdir is for a function scope (good for a single test), which the tmpdir_factory for other scopes(good for many tests).

### 日本語参考記事

* [初中級者のためのpytest入門(くろのて)](https://note.crohaco.net/2016/python-pytest/)


* よくまとまっている記事

  * [pytest ヘビーユーザーへの第一歩](https://www.m3tech.blog/entry/pytest-summary)

  * [pytest入門 - 闘うITエンジニアの覚え書き](https://www.magata.net/memo/index.php?pytest%C6%FE%CC%E7)

  * [pytest：フィクスチャの使い方](https://qiita.com/_akiyama_/items/9ead227227d669b0564e)

  * [pytestの使い方と便利な機能](https://qiita.com/sasaki77/items/97c90ae272373d78b422)


### Multimedia
* [Python Testing with pytest](https://learning.oreilly.com/library/view/python-testing-with/9781680502848/)

* [Hands-On Test Driven Development with Python](https://learning.oreilly.com/videos/-/9781789138313/)

## unittest.mock

### How to quickly use unittest.mock

* Importatnt thing to remember

  * if we want mock to have "magic" methods pre-made, use the MagicMock class 

  * auto-speccing and seal are very important tools
  
  * unittest.mock introduction. very well written document:

  * https://docs.python.org/3/library/unittest.mock.html#module-unittest.mock

  * examples by the official document:

    * https://docs.python.org/3/library/unittest.mock-examples.html

  * Good examples of using mock 

    * https://medium.com/@yeraydiazdiaz/what-the-mock-cheatsheet-mocking-in-python-6a71db997832

    * https://stackoverflow.com/questions/11501520/importerror-no-module-named-mock


https://myadventuresincoding.wordpress.com/2011/02/26/python-python-mock-cheat-sheet/

### auto-speccing

* autospeccing can be useful if we want any mock object to act as the same as the original object being mocked

* [auto-speccing](https://docs.python.org/3/library/unittest.mock.html#auto-speccing)

### seal

* if we want the mock not to add any more attributes or functions, it's a good idea to seal by using seal function
   


* This is a very specific resolution of how to mock a name attribute of an object. This happens if your obejct uses "name" attribute and when using the mock, mock also has the name attribute.

  * https://blog.tunarob.com/2017/04/27/mock-name-attribute/

### 日本語参考記事


* good examples of using assert_called:

  * https://thinkami.hatenablog.com/entry/2017/03/18/063454

* good examples

  * https://note.crohaco.net/2015/python-mock/


* https://codeday.me/jp/qa/20190101/94801.html

* https://dev.classmethod.jp/server-side/python/pytest-getting-started/


### multimedia

* [Understanding Unittest.Mock](https://learning.oreilly.com/videos/understanding-unittest-mock/9781484244135/)

## tox

## Miscellaneous

* To mock API of AWS boto3, this moto package seems extremely useful: 

  * https://github.com/spulec/moto

* Some people think pytest-mock is a good wrapper of mock package. so worth taking a look

  * https://github.com/pytest-dev/pytest-mock/

## Reference

## Reference in Japanese 
### [まだmockで消耗してるの？mockを理解するための3つのポイント(くろのて)](https://note.crohaco.net/2015/python-mock/) 






