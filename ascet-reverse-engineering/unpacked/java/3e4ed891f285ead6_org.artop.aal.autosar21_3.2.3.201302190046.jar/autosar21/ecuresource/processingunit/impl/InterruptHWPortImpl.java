/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar21.ecuresource.processingunit.impl;

import autosar21.ecuresource.impl.HWPortImpl;
import autosar21.ecuresource.processingunit.InterruptHWPort;
import autosar21.ecuresource.processingunit.ProcessingunitPackage;
import org.eclipse.emf.ecore.EClass;

public abstract class InterruptHWPortImpl
extends HWPortImpl
implements InterruptHWPort {
    protected InterruptHWPortImpl() {
    }

    protected EClass eStaticClass() {
        return ProcessingunitPackage.Literals.INTERRUPT_HW_PORT;
    }
}

