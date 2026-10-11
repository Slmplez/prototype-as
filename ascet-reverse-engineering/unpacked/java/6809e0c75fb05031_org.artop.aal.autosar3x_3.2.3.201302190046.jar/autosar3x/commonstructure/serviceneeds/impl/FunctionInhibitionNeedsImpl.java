/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar3x.commonstructure.serviceneeds.impl;

import autosar3x.commonstructure.serviceneeds.FunctionInhibitionNeeds;
import autosar3x.commonstructure.serviceneeds.ServiceneedsPackage;
import autosar3x.commonstructure.serviceneeds.impl.ServiceNeedsImpl;
import org.eclipse.emf.ecore.EClass;

public class FunctionInhibitionNeedsImpl
extends ServiceNeedsImpl
implements FunctionInhibitionNeeds {
    protected FunctionInhibitionNeedsImpl() {
    }

    protected EClass eStaticClass() {
        return ServiceneedsPackage.Literals.FUNCTION_INHIBITION_NEEDS;
    }
}

