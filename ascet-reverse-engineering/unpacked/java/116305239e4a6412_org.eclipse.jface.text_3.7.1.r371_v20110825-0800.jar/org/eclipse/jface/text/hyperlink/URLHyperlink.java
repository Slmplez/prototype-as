/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.swt.program.Program
 */
package org.eclipse.jface.text.hyperlink;

import com.ibm.icu.text.MessageFormat;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.hyperlink.HyperlinkMessages;
import org.eclipse.jface.text.hyperlink.IHyperlink;
import org.eclipse.swt.program.Program;

public class URLHyperlink
implements IHyperlink {
    private String fURLString;
    private IRegion fRegion;

    public URLHyperlink(IRegion region, String urlString) {
        Assert.isNotNull((Object)urlString);
        Assert.isNotNull((Object)region);
        this.fRegion = region;
        this.fURLString = urlString;
    }

    public IRegion getHyperlinkRegion() {
        return this.fRegion;
    }

    public void open() {
        if (this.fURLString != null) {
            Program.launch((String)this.fURLString);
            return;
        }
    }

    public String getTypeLabel() {
        return null;
    }

    public String getHyperlinkText() {
        return MessageFormat.format((String)HyperlinkMessages.getString("URLHyperlink.hyperlinkText"), (Object[])new Object[]{this.fURLString});
    }

    public String getURLString() {
        return this.fURLString;
    }
}

