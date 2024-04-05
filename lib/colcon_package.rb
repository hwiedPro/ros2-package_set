def colcon_package(name, type = :import_package, move_to: name, workspace: Autoproj.workspace)
    send(type, name) do |pkg|
        pkg.use_package_xml = true
        # allows to enable tests and install the dependencies
        # you have to run autoproj test enable
        pkg.test_utility.no_results = true
        pkg.test_utility.task do
        end
        yield(pkg) if block_given?
    end
    if name != move_to then
        move_package name, move_to
    end
end


