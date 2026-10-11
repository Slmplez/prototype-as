/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help;

import org.eclipse.help.IHelpResource;
import org.eclipse.help.IUAElement;

public interface ITopic
extends IUAElement,
IHelpResource {
    public static final String TOPIC = "topic";

    public ITopic[] getSubtopics();
}

