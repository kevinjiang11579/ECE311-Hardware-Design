webtalk_init -webtalk_dir /home/student/lab5_6/lab5_6.sim/sim_1/behav/xsim/xsim.dir/lab5_6testFile_behav/webtalk/
webtalk_register_client -client project
webtalk_add_data -client project -key date_generated -value "Wed Nov  6 20:40:29 2019" -context "software_version_and_target_device"
webtalk_add_data -client project -key product_version -value "XSIM v2019.1 (64-bit)" -context "software_version_and_target_device"
webtalk_add_data -client project -key build_version -value "2552052" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_platform -value "LIN64" -context "software_version_and_target_device"
webtalk_add_data -client project -key registration_id -value "" -context "software_version_and_target_device"
webtalk_add_data -client project -key tool_flow -value "xsim_vivado" -context "software_version_and_target_device"
webtalk_add_data -client project -key beta -value "FALSE" -context "software_version_and_target_device"
webtalk_add_data -client project -key route_design -value "FALSE" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_family -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_device -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_package -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_speed -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key random_id -value "24b4982b-59b3-4918-a538-ea821205665a" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_id -value "d88ac13b83a84beaa823a0d996592c00" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_iteration -value "7" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_name -value "Debian" -context "user_environment"
webtalk_add_data -client project -key os_release -value "Debian GNU/Linux 10 (buster)" -context "user_environment"
webtalk_add_data -client project -key cpu_name -value "Intel(R) Core(TM) i7-8700 CPU @ 3.20GHz" -context "user_environment"
webtalk_add_data -client project -key cpu_speed -value "4348.078 MHz" -context "user_environment"
webtalk_add_data -client project -key total_processors -value "1" -context "user_environment"
webtalk_add_data -client project -key system_ram -value "16.000 GB" -context "user_environment"
webtalk_register_client -client xsim
webtalk_add_data -client xsim -key Command -value "xsim" -context "xsim\\command_line_options"
webtalk_add_data -client xsim -key trace_waveform -value "true" -context "xsim\\usage"
webtalk_add_data -client xsim -key runtime -value "1 us" -context "xsim\\usage"
webtalk_add_data -client xsim -key iteration -value "0" -context "xsim\\usage"
webtalk_add_data -client xsim -key Simulation_Time -value "0.03_sec" -context "xsim\\usage"
webtalk_add_data -client xsim -key Simulation_Memory -value "115084_KB" -context "xsim\\usage"
webtalk_transmit -clientid 3775058199 -regid "" -xml /home/student/lab5_6/lab5_6.sim/sim_1/behav/xsim/xsim.dir/lab5_6testFile_behav/webtalk/usage_statistics_ext_xsim.xml -html /home/student/lab5_6/lab5_6.sim/sim_1/behav/xsim/xsim.dir/lab5_6testFile_behav/webtalk/usage_statistics_ext_xsim.html -wdm /home/student/lab5_6/lab5_6.sim/sim_1/behav/xsim/xsim.dir/lab5_6testFile_behav/webtalk/usage_statistics_ext_xsim.wdm -intro "<H3>XSIM Usage Report</H3><BR>"
webtalk_terminate
