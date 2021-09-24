const MofiStrategyMulticall = artifacts.require("MofiStrategyMulticall");

module.exports = function (deployer) {
  deployer.deploy(MofiStrategyMulticall);
};
