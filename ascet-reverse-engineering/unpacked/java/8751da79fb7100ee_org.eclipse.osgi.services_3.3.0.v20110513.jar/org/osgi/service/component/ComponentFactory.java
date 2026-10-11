/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.service.component;

import java.util.Dictionary;
import org.osgi.service.component.ComponentInstance;

public interface ComponentFactory {
    public ComponentInstance newInstance(Dictionary var1);
}

