/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar21.swcomponent.communication.impl;

import autosar21.swcomponent.communication.CommunicationPackage;
import autosar21.swcomponent.communication.QueuedSenderComSpec;
import autosar21.swcomponent.communication.impl.SenderComSpecImpl;
import org.eclipse.emf.ecore.EClass;

public class QueuedSenderComSpecImpl
extends SenderComSpecImpl
implements QueuedSenderComSpec {
    protected QueuedSenderComSpecImpl() {
    }

    protected EClass eStaticClass() {
        return CommunicationPackage.Literals.QUEUED_SENDER_COM_SPEC;
    }
}

