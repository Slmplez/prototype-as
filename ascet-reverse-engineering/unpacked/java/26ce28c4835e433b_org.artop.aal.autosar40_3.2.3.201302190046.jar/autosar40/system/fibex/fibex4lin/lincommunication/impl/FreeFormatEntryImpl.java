/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.system.fibex.fibex4lin.lincommunication.impl;

import autosar40.system.fibex.fibex4lin.lincommunication.FreeFormatEntry;
import autosar40.system.fibex.fibex4lin.lincommunication.LincommunicationPackage;
import autosar40.system.fibex.fibex4lin.lincommunication.impl.ScheduleTableEntryImpl;
import org.eclipse.emf.ecore.EClass;

public abstract class FreeFormatEntryImpl
extends ScheduleTableEntryImpl
implements FreeFormatEntry {
    protected FreeFormatEntryImpl() {
    }

    protected EClass eStaticClass() {
        return LincommunicationPackage.Literals.FREE_FORMAT_ENTRY;
    }
}

