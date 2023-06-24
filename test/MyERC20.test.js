const { expect } = require('chai');

// Start test block
describe('MyERC20', function () {
  before(async function () {
    this.MyERC20 = await ethers.getContractFactory('MyERC20');
  });

  beforeEach(async function () {
    this.myERC20 = await this.MyERC20.deploy();
    const [owner, addr1, ...addrs] = await ethers.getSigners();
    await this.myERC20.deployed(owner.address);
  });

  // Test case
  it("has a name", async function () {
    expect(await this.myERC20.name()).to.be.equal('MyERC20');
  });
});