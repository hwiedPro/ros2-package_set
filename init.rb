os_names, os_versions = Autoproj.workspace.operating_system
if os_names.include?('ubuntu')
    if os_versions.include?('focal')
        Autoproj.message ("Load ros2 osdeps with the suffix 'focal'")
        Autoproj.workspace.osdep_suffixes << 'focal'
        Autoproj.message Autoproj.workspace.osdep_suffixes
    elsif os_versions.include?('jammy')
        Autoproj.message ("Load ros2 osdeps with the suffix 'jammy'")
        Autoproj.workspace.osdep_suffixes << 'jammy'
    else
        Autoproj.error("Unsupported ubuntu version #{is_versions}")
    end
else
    Autoproj.error("Unsupported os version: #{os_names}")
end