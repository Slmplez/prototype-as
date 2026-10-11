/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.events.VerifyEvent
 */
package org.eclipse.jface.internal.text.link.contentassist;

import org.eclipse.jface.text.IEventConsumer;
import org.eclipse.swt.events.VerifyEvent;

interface IContentAssistListener2
extends IEventConsumer {
    public boolean verifyKey(VerifyEvent var1);
}

