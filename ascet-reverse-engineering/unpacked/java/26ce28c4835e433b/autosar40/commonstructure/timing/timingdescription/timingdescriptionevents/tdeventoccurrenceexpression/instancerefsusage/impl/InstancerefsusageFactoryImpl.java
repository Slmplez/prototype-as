/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefsusage.impl;

import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefsusage.AutosarOperationArgumentInstance;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefsusage.AutosarVariableInstance;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefsusage.InstancerefsusageFactory;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefsusage.InstancerefsusagePackage;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefsusage.impl.AutosarOperationArgumentInstanceImpl;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefsusage.impl.AutosarVariableInstanceImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class InstancerefsusageFactoryImpl
extends EFactoryImpl
implements InstancerefsusageFactory {
    public static InstancerefsusageFactory init() {
        try {
            InstancerefsusageFactory theInstancerefsusageFactory = (InstancerefsusageFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/cs/t/td/tde/tdeoe/iru");
            if (theInstancerefsusageFactory != null) {
                return theInstancerefsusageFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new InstancerefsusageFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createAutosarOperationArgumentInstance();
            }
            case 1: {
                return this.createAutosarVariableInstance();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public AutosarOperationArgumentInstance createAutosarOperationArgumentInstance() {
        AutosarOperationArgumentInstanceImpl autosarOperationArgumentInstance = new AutosarOperationArgumentInstanceImpl();
        return autosarOperationArgumentInstance;
    }

    public AutosarVariableInstance createAutosarVariableInstance() {
        AutosarVariableInstanceImpl autosarVariableInstance = new AutosarVariableInstanceImpl();
        return autosarVariableInstance;
    }

    public InstancerefsusagePackage getInstancerefsusagePackage() {
        return (InstancerefsusagePackage)this.getEPackage();
    }

    @Deprecated
    public static InstancerefsusagePackage getPackage() {
        return InstancerefsusagePackage.eINSTANCE;
    }
}

