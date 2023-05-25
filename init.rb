#Autoproj.config.declare("ros2_version",
#    "string",
#    default: "foxy",
#    possible_values: ["foxy","humble"],
#    doc: ["Which ros2 version? [foxy, humble]"])

#if Autoproj.config.get("ros2_version") == "foxy" || Autoproj.config.get("ros2_version") == "humble"
#    Autoproj.message ("Load workspace suffix " + Autoproj.config.get("ros2_version"))
#    Autoproj.workspace.osdep_suffixes << Autoproj.config.get("ros2_version")
#end