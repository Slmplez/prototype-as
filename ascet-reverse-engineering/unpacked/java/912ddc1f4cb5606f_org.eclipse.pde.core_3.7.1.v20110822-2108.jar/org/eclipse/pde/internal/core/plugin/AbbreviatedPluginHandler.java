/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.plugin;

import org.eclipse.pde.internal.core.plugin.PluginHandler;
import org.w3c.dom.Element;
import org.xml.sax.SAXException;

public class AbbreviatedPluginHandler
extends PluginHandler {
    private String[] fExtensionPointIDs;

    public AbbreviatedPluginHandler(String[] extensionPointIDs) {
        super(true);
        this.fExtensionPointIDs = extensionPointIDs;
    }

    protected boolean isInterestingExtension(Element element) {
        String point = element.getAttribute("point");
        int i = 0;
        while (i < this.fExtensionPointIDs.length) {
            if (point.equals(this.fExtensionPointIDs[i])) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public void characters(char[] characters, int start, int length) throws SAXException {
        this.processCharacters(characters, start, length);
    }
}

