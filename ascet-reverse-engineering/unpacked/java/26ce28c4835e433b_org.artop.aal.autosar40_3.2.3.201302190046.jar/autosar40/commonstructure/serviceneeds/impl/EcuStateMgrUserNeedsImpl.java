/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.commonstructure.serviceneeds.impl;

import autosar40.commonstructure.serviceneeds.EcuStateMgrUserNeeds;
import autosar40.commonstructure.serviceneeds.ServiceneedsPackage;
import autosar40.commonstructure.serviceneeds.impl.ServiceNeedsImpl;
import org.eclipse.emf.ecore.EClass;

public class EcuStateMgrUserNeedsImpl
extends ServiceNeedsImpl
implements EcuStateMgrUserNeeds {
    protected EcuStateMgrUserNeedsImpl() {
    }

    protected EClass eStaticClass() {
        return ServiceneedsPackage.Literals.ECU_STATE_MGR_USER_NEEDS;
    }
}

