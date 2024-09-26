// SPDX-License-Identifier: GPL-3.0;
pragma solidity ^0.8.21;

contract BookStore {
    address public owner;
    uint256 public bookcount;

    event BookAdded(uint256 indexed book_id, string title, string author ,uint256 copies);
    event BookUddated(uint256 indexed book_idU, string titleU, string authorU ,uint256 copiesU);

    struct Book {
        string title;
        string author;
        uint256 copies;
    }
    //mapping book id to Book, whenever an id is input, it will bring the list of book.
    //books will be the access point for inputting book
    mapping(uint256 => Book) public books;
    
    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can add to books");
        _;
    }

    constructor (){
        bookcount = 0;
        owner = msg.sender;
    }

    //we will save the title, author and copies to memory, since we are storing them for future use.
    function addBook (string memory _title, string memory _author, uint256 _copies) public onlyOwner {
        bookcount ++;
        books[bookcount] = Book ({
            title: _title,
            author: _author,
            copies: _copies
        });

        emit BookAdded(bookcount, _title, _author, _copies);
    }

    function updateBook (uint256 book_id, string memory _title, string memory _author, uint256 _copies) public onlyOwner {
        book_id = book_id;
        books[book_id] = Book ({
        title: _title,
        author: _author,
        copies: _copies
        });

        emit BookUddated(book_id, _title, _author, _copies);
    }



    function getBook(uint256 book_id) public view returns (string memory, string memory, uint256) {
        require(book_id >0 && book_id < bookcount, "Book not exist");
         require(keccak256(abi.encodePacked(books[book_id].title)) != keccak256(abi.encodePacked("")), "Book not exist");
        return(books[book_id].title, books[book_id].author, books[book_id].copies);
    } 
}