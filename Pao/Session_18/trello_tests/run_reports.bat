

cucumber –f html –o report_all.html –t @board -t @Organizations

cucumber –f html –o report_only_organizations.html –t @Organizations

cucumber –f html –o report.html_WF01 –t @WF01 -t @UpdateBoard

cucumber –f html –o test_report.html –t @WF01 –t ~@ListBoard
