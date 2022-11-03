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

    Product[] public products;
}