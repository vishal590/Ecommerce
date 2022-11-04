//SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.7;

contract Ecommerce{
    struct Product {
        string title;
        string desc;
        address payable seller;
        uint productId;
        uint price;
        address buyer;
        bool deliverd;
    }
    
    uint counter = 1;
    Product[] public products;

    function registerProduct(string memory _title, string memory _desc, uint _price) public {
        require(_price > 0, "Price should be greater than zero");
        Product memory tempProduct;
        tempProduct.title = _title;
        tempProduct.desc = _desc;
        tempProduct.price = _price * 10**18;
        tempProduct.seller = payable(msg.sender);
        tempProduct.productId = counter;
        products.push(tempProduct);
        counter++;
    }
}