/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.core.runtime.Platform
 */
package org.eclipse.ui.internal.registry;

import java.util.ArrayList;
import java.util.StringTokenizer;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.Platform;
import org.eclipse.ui.internal.registry.EditorDescriptor;
import org.eclipse.ui.internal.registry.EditorRegistry;
import org.eclipse.ui.internal.registry.RegistryReader;

public class EditorRegistryReader
extends RegistryReader {
    private EditorRegistry editorRegistry;

    protected void addEditors(EditorRegistry registry) {
        IExtensionRegistry extensionRegistry = Platform.getExtensionRegistry();
        this.editorRegistry = registry;
        this.readRegistry(extensionRegistry, "org.eclipse.ui", "editors");
    }

    protected boolean readElement(IConfigurationElement element) {
        String filenamesString;
        if (!element.getName().equals("editor")) {
            return false;
        }
        String id = element.getAttribute("id");
        if (id == null) {
            EditorRegistryReader.logMissingAttribute(element, "id");
            return true;
        }
        EditorDescriptor editor = new EditorDescriptor(id, element);
        ArrayList<String> extensionsVector = new ArrayList<String>();
        ArrayList<String> filenamesVector = new ArrayList<String>();
        ArrayList<String> contentTypeVector = new ArrayList<String>();
        boolean defaultEditor = false;
        if (element.getAttribute("name") == null) {
            EditorRegistryReader.logMissingAttribute(element, "name");
            return true;
        }
        String extensionsString = element.getAttribute("extensions");
        if (extensionsString != null) {
            StringTokenizer tokenizer = new StringTokenizer(extensionsString, ",");
            while (tokenizer.hasMoreTokens()) {
                extensionsVector.add(tokenizer.nextToken().trim());
            }
        }
        if ((filenamesString = element.getAttribute("filenames")) != null) {
            StringTokenizer tokenizer = new StringTokenizer(filenamesString, ",");
            while (tokenizer.hasMoreTokens()) {
                filenamesVector.add(tokenizer.nextToken().trim());
            }
        }
        IConfigurationElement[] bindings = element.getChildren("contentTypeBinding");
        int i = 0;
        while (i < bindings.length) {
            String contentTypeId = bindings[i].getAttribute("contentTypeId");
            if (contentTypeId != null) {
                contentTypeVector.add(contentTypeId);
            }
            ++i;
        }
        String def = element.getAttribute("default");
        if (def != null) {
            defaultEditor = Boolean.valueOf(def);
        }
        this.editorRegistry.addEditorFromPlugin(editor, extensionsVector, filenamesVector, contentTypeVector, defaultEditor);
        return true;
    }

    public void readElement(EditorRegistry editorRegistry, IConfigurationElement element) {
        this.editorRegistry = editorRegistry;
        this.readElement(element);
    }
}

