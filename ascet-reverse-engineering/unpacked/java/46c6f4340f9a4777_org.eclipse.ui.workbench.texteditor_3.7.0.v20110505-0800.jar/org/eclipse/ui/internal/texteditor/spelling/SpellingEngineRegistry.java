/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.Platform
 */
package org.eclipse.ui.internal.texteditor.spelling;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.Platform;
import org.eclipse.ui.texteditor.spelling.SpellingEngineDescriptor;

public class SpellingEngineRegistry {
    public static final String SPELLING_ENGINE_EXTENSION_POINT = "spellingEngine";
    private Map fDescriptorsMap;
    private SpellingEngineDescriptor fDefaultDescriptor;
    private SpellingEngineDescriptor[] fDescriptors;
    private boolean fLoaded = false;

    public SpellingEngineDescriptor getDescriptor(String id) {
        this.ensureExtensionsLoaded();
        return (SpellingEngineDescriptor)this.fDescriptorsMap.get(id);
    }

    public SpellingEngineDescriptor getDefaultDescriptor() {
        this.ensureExtensionsLoaded();
        return this.fDefaultDescriptor;
    }

    public SpellingEngineDescriptor[] getDescriptors() {
        this.ensureExtensionsLoaded();
        return this.fDescriptors;
    }

    public synchronized void reloadExtensions() {
        ArrayList<SpellingEngineDescriptor> descriptors = new ArrayList<SpellingEngineDescriptor>();
        this.fDescriptorsMap = new HashMap();
        this.fDefaultDescriptor = null;
        IConfigurationElement[] elements = Platform.getExtensionRegistry().getConfigurationElementsFor("org.eclipse.ui.workbench.texteditor", SPELLING_ENGINE_EXTENSION_POINT);
        int i = 0;
        while (i < elements.length) {
            SpellingEngineDescriptor descriptor = new SpellingEngineDescriptor(elements[i]);
            descriptors.add(descriptor);
            this.fDescriptorsMap.put(descriptor.getId(), descriptor);
            if (this.fDefaultDescriptor == null && descriptor.isDefault()) {
                this.fDefaultDescriptor = descriptor;
            }
            ++i;
        }
        this.fDescriptors = descriptors.toArray(new SpellingEngineDescriptor[descriptors.size()]);
        this.fLoaded = true;
        if (this.fDefaultDescriptor == null && this.fDescriptors.length > 0) {
            this.fDefaultDescriptor = this.fDescriptors[0];
        }
    }

    private void ensureExtensionsLoaded() {
        if (!this.fLoaded) {
            this.reloadExtensions();
        }
    }
}

