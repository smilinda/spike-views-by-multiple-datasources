/**
 * The MultipleDataSourseApplication.java in the views-with-multiple-datasourse Project.
 */
package com.shiran.spike.multiple;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author Central Finance
 * @version
 * @since Jan 8, 2021
 * @Implementation By Shiran & Modification By Shiran
 */
@SpringBootApplication
@RestController
public class MultipleDataSourseApplication {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    /**
     * This method used for
     * 
     * @param args
     */
    public static void main(String[] args) {
        SpringApplication.run(MultipleDataSourseApplication.class, args);
    }

    @RequestMapping("/applicantInfoReport")
    public List<Map<String, Object>> getStudentsReport() {
        return jdbcTemplate.queryForList("select * from student_envolmenting_report_view");
    }

}
