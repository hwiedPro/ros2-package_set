
def colcon_package(name, type = :import_package, workspace: Autoproj.workspace)
    send(type, name) do |pkg|
        pkg.pkg.use_package_xml = true
        yield(pkg) if block_given?
    end
end



