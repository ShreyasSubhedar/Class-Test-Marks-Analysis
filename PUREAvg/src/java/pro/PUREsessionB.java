/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pro;

import javax.ejb.Stateless;
import javax.ejb.LocalBean;

/**
 *
 * @author Shreyas
 */
@Stateless
@LocalBean
public class PUREsessionB {

    public int getAvg(int CT1, int CT2) {
      
            return (CT1+CT2)/2;
    }

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
}
