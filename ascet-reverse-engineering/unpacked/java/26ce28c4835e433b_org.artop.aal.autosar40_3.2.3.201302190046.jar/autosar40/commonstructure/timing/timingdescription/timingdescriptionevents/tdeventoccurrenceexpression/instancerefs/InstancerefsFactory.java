/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefs;

import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefs.InstancerefsPackage;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefs.OperationArgumentInComponentInstanceRef;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefs.VariableInComponentInstanceRef;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefs.impl.InstancerefsFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface InstancerefsFactory
extends EFactory {
    public static final InstancerefsFactory eINSTANCE = InstancerefsFactoryImpl.init();

    public VariableInComponentInstanceRef createVariableInComponentInstanceRef();

    public OperationArgumentInComponentInstanceRef createOperationArgumentInComponentInstanceRef();

    public InstancerefsPackage getInstancerefsPackage();
}

