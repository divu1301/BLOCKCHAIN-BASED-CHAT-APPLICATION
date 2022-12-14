// SPDX-License-Identifier: MIT
pragma solidity 0.8.12;
contract Blockchainchat{
    struct Message{
        address waver;
        string content;
        uint timestamp;
    }

    Message[] messages;
    function sendMessage(string calldata _content) public{
        messages.push(Message(msg.sender,_content,block.timestamp));
    }

    function getMessage() view public returns (Message[] memory){
        return messages;
    }
}