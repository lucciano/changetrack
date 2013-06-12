Feature: Simple counting of method changes
    The analyzer counts changes to a single method over a complete checkout.

    Scenario: Count method changes on the start() method of the Daemon.
        Given I have the repository "https://github.com/QafooLabs/Daemon.git"
         When I analyze the changes
         Then I have a count of "4" for method "start" in class "QafooLabs\Daemon\Daemon"
          And I have a count of "1" for method "setDebug" in class "QafooLabs\Daemon\Daemon"
