const MofiLastHarvestMulticall = artifacts.require("MofiLastHarvestMulticall");

module.exports = function (deployer) {
  deployer.deploy(MofiLastHarvestMulticall);
};
