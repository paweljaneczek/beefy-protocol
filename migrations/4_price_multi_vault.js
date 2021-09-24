const MofiPriceMulticall = artifacts.require("MofiPriceMulticall");

module.exports = function (deployer) {
  deployer.deploy(MofiPriceMulticall);
};
