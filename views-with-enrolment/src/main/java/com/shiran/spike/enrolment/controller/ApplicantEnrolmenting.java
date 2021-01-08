/**
 * The ApplicantEnrolmenting.java in the views-with-entrolment Project.
 */
package com.shiran.spike.enrolment.controller;

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
public class ApplicantEnrolmenting {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @RequestMapping("/allEnrolment")
    public List<Map<String, Object>> entrolmentApplicant() {
        return jdbcTemplate.queryForList("select * from course_envolment");
    }

}
