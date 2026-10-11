/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help;

import org.eclipse.help.IHelpResource;
import org.eclipse.help.ITopic;
import org.eclipse.help.IUAElement;

public interface IToc
extends IUAElement,
IHelpResource {
    public static final String TOC = "toc";
    public static final String TOPIC = "topic";

    public ITopic[] getTopics();

    public ITopic getTopic(String var1);
}

