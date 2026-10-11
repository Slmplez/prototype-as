/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help.internal.criteria;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import javax.xml.parsers.ParserConfigurationException;
import org.eclipse.help.internal.criteria.CriteriaDefinition;
import org.eclipse.help.internal.criteria.CriteriaDefinitionContribution;
import org.eclipse.help.internal.criteria.CriteriaDefinitionDocumentReader;
import org.eclipse.help.internal.criteria.CriteriaDefinitionFile;
import org.eclipse.help.internal.dynamic.DocumentReader;
import org.xml.sax.SAXException;

public class CriteriaDefinitionFileParser {
    private DocumentReader reader;

    public CriteriaDefinitionContribution parse(CriteriaDefinitionFile criteriaDefinitionFile) throws IOException, SAXException, ParserConfigurationException {
        InputStream in;
        if (this.reader == null) {
            this.reader = new CriteriaDefinitionDocumentReader();
        }
        if ((in = criteriaDefinitionFile.getInputStream()) != null) {
            CriteriaDefinition criteria = (CriteriaDefinition)this.reader.read(in);
            CriteriaDefinitionContribution contrib = new CriteriaDefinitionContribution();
            contrib.setId(String.valueOf('/') + criteriaDefinitionFile.getPluginId() + '/' + criteriaDefinitionFile.getFile());
            contrib.setCriteriaDefinition(criteria);
            contrib.setLocale(criteriaDefinitionFile.getLocale());
            return contrib;
        }
        throw new FileNotFoundException();
    }
}

