// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
  // import " @openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
  // import " @openzeppelin/contracts/token/ERC721/ERC721.sol (^0.8.0)";
  // import " @openzeppelin/contracts/token/ERC721/extensions/IERC721Metadata.sol (^0.8.0)";
  // import "@openzeppelin/contracts/token/ERC721/IERC721.sol (^0.8.0)";
  // import " @openzeppelin/contracts/utils/introspection/IERC165.sol (^0.8.0)";
  // import " @openzeppelin/contracts/utils/introspection/ERC165.sol (^0.8.0)";
  // import "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol (^0.8.0)";
  // import " @openzeppelin/contracts/utils/Context.sol (^0.8.0)";
  // import "@openzeppelin/contracts/access/Ownable.sol (^0.8.0)";
  // import " @openzeppelin/contracts/utils/Address.sol (^0.8.1)";
  // import " @openzeppelin/contracts/utils/Strings.sol (^0.8.0)";
  // import " @openzeppelin/contracts/utils/math/Math.sol (^0.8.0)";
  // import " @openzeppelin/contracts/utils/Counters.sol (^0.8.0)";

contract MyNFT is ERC721URIStorage,Ownable {
    using Counters for Counters.Counter;

    Counters.Counter private _tokenId;

    constructor() ERC721("Niladri","NIL"){

    }
    function mintNFT(address recipient,string memory tokenURI) public onlyOwner returns(uint256)
    {
        _tokenId.increment();

        uint newItemId = _tokenId.current();
        _mint(recipient,newItemId);
        _setTokenURI(newItemId, tokenURI);

        return newItemId;
    }
}