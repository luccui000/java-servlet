/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.luccui.mappings;

import java.sql.ResultSet;

public interface IMapping {
    <T> T mapping(ResultSet res);
}
