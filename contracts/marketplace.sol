// SPDX-License-Identifier: GPL-3.0
pragma solidity >0.6.0<0.9.0;


contract marketPlace{
    struct product{
        address payable owner;
        string name;
        string image;
        string description;
        string location;
        uint price; 
        uint sold;
    }

    mapping(uint => product)internal products;

    function writeProduct(uint _index,
    string memory _name,
    string memory _image,
    string memory _decription,
    string memory _location,
    uint _price
    )public{
        uint _sold =0;
        products[_index]=product(
            payable(msg.sender),
            _name,
            _image,
            _decription,
            _location,
            _price,
            _sold

        );
        
    }


                    
    function readProduct(uint _index)public view returns(address payable,
    string memory,
    string memory,
    string memory, 
    string memory,
    uint
    ){
        return(
            products[_index].owner,
            products[_index].name,
            products[_index].image,
            products[_index].description,
            products[_index].location,
            products[_index].price
            );

    }
        
    
}