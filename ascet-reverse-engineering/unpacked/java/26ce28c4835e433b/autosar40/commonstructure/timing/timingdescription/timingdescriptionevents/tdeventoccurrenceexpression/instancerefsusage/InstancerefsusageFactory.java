/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefsusage;

import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefsusage.AutosarOperationArgumentInstance;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefsusage.AutosarVariableInstance;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefsusage.InstancerefsusagePackage;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefsusage.impl.InstancerefsusageFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface InstancerefsusageFactory
extends EFactory {
    public static final InstancerefsusageFactory eINSTANCE = InstancerefsusageFactoryImpl.init();

    public AutosarOperationArgumentInstance createAutosarOperationArgumentInstance();

    public AutosarVariableInstance createAutosarVariableInstance();

    public InstancerefsusagePackage getInstancerefsusagePackage();
}

