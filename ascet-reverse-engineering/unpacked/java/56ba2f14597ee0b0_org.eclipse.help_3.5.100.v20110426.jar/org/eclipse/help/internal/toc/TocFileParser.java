/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help.internal.toc;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import javax.xml.parsers.ParserConfigurationException;
import org.eclipse.help.internal.dynamic.DocumentReader;
import org.eclipse.help.internal.toc.DocumentFinder;
import org.eclipse.help.internal.toc.HrefUtil;
import org.eclipse.help.internal.toc.Toc;
import org.eclipse.help.internal.toc.TocContribution;
import org.eclipse.help.internal.toc.TocFile;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public class TocFileParser
extends DefaultHandler {
    private DocumentReader reader;

    public TocContribution parse(TocFile tocFile) throws IOException, SAXException, ParserConfigurationException {
        InputStream in;
        if (this.reader == null) {
            this.reader = new DocumentReader();
        }
        if ((in = tocFile.getInputStream()) != null) {
            try {
                Toc toc = (Toc)this.reader.read(in);
                TocContribution contribution = new TocContribution();
                contribution.setCategoryId(tocFile.getCategory());
                contribution.setContributorId(tocFile.getPluginId());
                contribution.setExtraDocuments(DocumentFinder.collectExtraDocuments(tocFile));
                contribution.setId(HrefUtil.normalizeHref(tocFile.getPluginId(), tocFile.getFile()));
                contribution.setLocale(tocFile.getLocale());
                contribution.setToc(toc);
                contribution.setPrimary(tocFile.isPrimary());
                TocContribution tocContribution = contribution;
                return tocContribution;
            }
            finally {
                in.close();
            }
        }
        throw new FileNotFoundException();
    }
}

