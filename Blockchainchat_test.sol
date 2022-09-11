// SPDX-License-Identifier: MIT
pragma solidity 0.8.12;
import "remix_tests.sol";
import "../blockchainchat.sol";
contract BlockchainChatTest {
  Blockchainchat blockchainChatToTest;
  /// 'beforeAll' runs before all other tests
  function beforeAll () public {
    blockchainChatToTest = new Blockchainchat();
  }
function checkSendMessage () public {
    // Send a first message
    blockchainChatToTest.sendMessage("Hello World!");
    // Ensure the messages variable contains 1 message
    Assert.equal(blockchainChatToTest.getMessage().length, uint(1), "messages state variable should contain 1 message");
    // Ensure that our first message's content is "Hello World!"
    Assert.equal(blockchainChatToTest.getMessage()[0].content, string("Hello World!"), "The first Message in message should be \"Hello World!\"");
    // Send a second message
    blockchainChatToTest.sendMessage("This chat is super fun.");
    // Ensure the messages variable contains 2messages
    Assert.equal(blockchainChatToTest.getMessage().length, uint(2), "messages state variable should contain 2 messages");
  }
}