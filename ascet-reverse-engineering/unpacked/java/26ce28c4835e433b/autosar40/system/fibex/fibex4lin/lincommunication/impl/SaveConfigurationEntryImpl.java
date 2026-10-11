/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.system.fibex.fibex4lin.lincommunication.impl;

import autosar40.system.fibex.fibex4lin.lincommunication.LincommunicationPackage;
import autosar40.system.fibex.fibex4lin.lincommunication.SaveConfigurationEntry;
import autosar40.system.fibex.fibex4lin.lincommunication.impl.LinConfigurationEntryImpl;
import org.eclipse.emf.ecore.EClass;

public class SaveConfigurationEntryImpl
extends LinConfigurationEntryImpl
implements SaveConfigurationEntry {
    protected SaveConfigurationEntryImpl() {
    }

    protected EClass eStaticClass() {
        return LincommunicationPackage.Literals.SAVE_CONFIGURATION_ENTRY;
    }
}

