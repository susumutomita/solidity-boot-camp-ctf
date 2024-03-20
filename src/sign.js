const ethers = require('ethers');


async function main(params) {
  let messageHash = ethers.utils.id("bidPrice(0.420)");
  let messageHashBytes = ethers.utils.arrayify(messageHash);
  let flatSig = await wallet.signMessage(messageHashBytes); // Sign the binary data
  let sig = ethers.utils.splitSignature(flatSig);
  console.log(sig);
}

main();
