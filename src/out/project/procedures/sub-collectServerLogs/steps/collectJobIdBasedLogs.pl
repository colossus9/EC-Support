#############################################################################
#
# Copyright Electric-Cloud 2015
#
#############################################################################
use Cwd;

$[/plugins[EC-Admin]project/scripts/perlHeaderJSON]

#############################################################################
#
# Parameters
#
#############################################################################
my $jobNumber = "$[jobNumber]";
my $serverResource = "$[serverResource]";

#############################################################################
#
# Global Variables
#
#############################################################################
my $DEBUG=1;
my $logDir="$[/server/Electric Cloud/dataDirectory]/logs";
my $cwd= getcwd();

opendir(my $logD, $logDir) or die("Cannot open the log directory\n$!");

while (my $file = readdir($logD)) {
    next if ($file !~ m/commander[\-\d.]*.log.zip/);
    printf("Processing $file\n") if ($DEBUG);

my $exitCode=system("zgrep jobId=$jobNumber $logDir/$file 2>&1");
    if ($exitCode == 0) {
    	printf("    Copying\n");
    	$ec->createJobStep({
        	subproject   => "/plugins/EC-FileOps/project",
            subprocedure => "Copy",
            jobStepName  => "Copy $file",
            actualParameter => [
            	{actualParameterName => 'sourceFile',        
                               value => "$logDir/$file"},
            	{actualParameterName => 'sourceResourceName',   
                               value => "$serverResource"},
            	{actualParameterName => 'sourceWorkspaceName',   
                               value => getP("/resources/$serverResource/workspaceName")?
                                    getP("/resources/$[targetServerResource]/workspaceName"):
                               		"default"},    
                                    
            	{actualParameterName => 'destinationFile',         
                               value => "$[destinationDirectory]/servers/$serverResource/"},
            	{actualParameterName => 'destinationResourceName', 
                               value => "$[targetServerResource]"},
            	{actualParameterName => 'destinationWorkspaceName',   
                               	value => getP("/resources/$[targetServerResource]/workspaceName")?
                                	getP("/resources/$[targetServerResource]/workspaceName"):
                               		"default"},            	
            ],
        });
    }
}
closedir($logD);

$[/plugins[EC-Admin]project/scripts/perlLibJSON]

