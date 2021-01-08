/**
 * The CourseController.java in the views-with-multiple-datasources Project.
 */
package com.shiran.spike.registration.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author Central Finance
 * @version
 * @since Jan 8, 2021
 * @Implementation By Shiran & Modification By Shiran
 */
@RestController
public class CourseController {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @RequestMapping("/allCourses")
    public List<Map<String, Object>> getAllCourses() {
        return jdbcTemplate.queryForList("select * from course_view");
    }

}
