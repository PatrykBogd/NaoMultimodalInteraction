<?xml version="1.0" encoding="UTF-8" ?>
<Package name="Nao" format_version="4">
    <Manifest src="manifest.xml" />
    <BehaviorDescriptions>
        <BehaviorDescription name="behavior" src="BogdAL" xar="behavior.xar" />
    </BehaviorDescriptions>
    <Dialogs>
        <Dialog name="ExampleDialog" src="BogdAL/ExampleDialog/ExampleDialog.dlg" />
        <Dialog name="ALife" src="ALife/ALife.dlg" />
    </Dialogs>
    <Resources>
        <File name="choice_sentences" src="BogdAL/Aldebaran/choice_sentences.xml" />
    </Resources>
    <Topics>
        <Topic name="ALife_enu" src="ALife/ALife_enu.top" topicName="ALife" language="en_US" />
        <Topic name="ExampleDialog_enu" src="BogdAL/ExampleDialog/ExampleDialog_enu.top" topicName="ExampleDialog" language="en_US" />
    </Topics>
    <IgnoredPaths>
        <Path src="New Folder" />
    </IgnoredPaths>
</Package>
