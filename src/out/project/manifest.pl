@files = (
	['//project/propertySheet/property[propertyName="ec_setup"]/value', 'ec_setup.pl'],
	['//project/procedure[procedureName="collectServerLogs"]/step[stepName="loop"]/command', 'procedures/collectServerLogs/steps/loop.pl'],
	['//project/procedure[procedureName="openEnhancementRequest"]/propertySheet/property[propertyName="ec_parameterForm"]/value', 'procedures/openEnhancementRequest/form.xml'],
	['//project/procedure[procedureName="openEnhancementRequest"]/step[stepName="getVersion"]/command', 'procedures/openEnhancementRequest/steps/getVersion.pl'],
	['//project/procedure[procedureName="openEnhancementRequest"]/step[stepName="createTicket"]/command', 'procedures/openEnhancementRequest/steps/createTicket.sh'],
	['//project/procedure[procedureName="openSupportTicket"]/propertySheet/property[propertyName="ec_parameterForm"]/value', 'procedures/openSupportTicket/form.xml'],
	['//project/procedure[procedureName="openSupportTicket"]/step[stepName="getVersion"]/command', 'procedures/openSupportTicket/steps/getVersion.pl'],
	['//project/procedure[procedureName="openSupportTicket"]/step[stepName="grabResource"]/command', 'procedures/openSupportTicket/steps/grabResource.sh'],
	['//project/procedure[procedureName="openSupportTicket"]/step[stepName="createTicket"]/command', 'procedures/openSupportTicket/steps/createTicket.sh'],
	['//project/procedure[procedureName="openSupportTicket"]/step[stepName="grabDestinationDir"]/command', 'procedures/openSupportTicket/steps/grabDestinationDir.pl'],
	['//project/procedure[procedureName="openSupportTicket"]/step[stepName="createTicketDirectory"]/command', 'procedures/openSupportTicket/steps/createTicketDirectory.sh'],
	['//project/procedure[procedureName="openSupportTicket"]/step[stepName="collectServerLogs"]/command', 'procedures/openSupportTicket/steps/collectServerLogs.sh'],
	['//project/procedure[procedureName="openSupportTicket"]/step[stepName="collectAgentLogs"]/command', 'procedures/openSupportTicket/steps/collectAgentLogs.pl'],
	['//project/procedure[procedureName="openSupportTicket"]/step[stepName="listing"]/command', 'procedures/openSupportTicket/steps/listing.pl'],
	['//project/procedure[procedureName="openSupportTicket"]/step[stepName="createBundle"]/command', 'procedures/openSupportTicket/steps/createBundle.sh'],
	['//project/procedure[procedureName="openSupportTicket"]/step[stepName="uploadBundleToSharefile"]/command', 'procedures/openSupportTicket/steps/uploadBundleToSharefile.sh'],
	['//project/procedure[procedureName="openSupportTicket"]/step[stepName="commentForFiles"]/command', 'procedures/openSupportTicket/steps/commentForFiles.sh'],
	['//project/procedure[procedureName="sub-collectServerLogs"]/propertySheet/property[propertyName="ec_parameterForm"]/value', 'procedures/sub-collectServerLogs/form.xml'],
	['//project/procedure[procedureName="sub-collectServerLogs"]/step[stepName="grabWorkspaces"]/command', 'procedures/sub-collectServerLogs/steps/grabWorkspaces.sh'],
	['//project/procedure[procedureName="sub-collectServerLogs"]/step[stepName="copyCommander_log"]/command', 'procedures/sub-collectServerLogs/steps/copyCommander_log.sh'],
	['//project/procedure[procedureName="sub-collectServerLogs"]/step[stepName="collectTimeBasedLogs"]/command', 'procedures/sub-collectServerLogs/steps/collectTimeBasedLogs.pl'],
	['//project/procedure[procedureName="sub-collectServerLogs"]/step[stepName="collectJobIdBasedLogs"]/command', 'procedures/sub-collectServerLogs/steps/collectJobIdBasedLogs.pl'],
);
