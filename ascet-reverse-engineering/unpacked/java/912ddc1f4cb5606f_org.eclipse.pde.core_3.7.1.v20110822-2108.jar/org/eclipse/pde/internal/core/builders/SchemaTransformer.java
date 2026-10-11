/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.FileLocator
 *  org.eclipse.core.runtime.IProduct
 *  org.eclipse.core.runtime.Platform
 *  org.osgi.framework.Bundle
 */
package org.eclipse.pde.internal.core.builders;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URL;
import java.util.Locale;
import org.eclipse.core.runtime.FileLocator;
import org.eclipse.core.runtime.IProduct;
import org.eclipse.core.runtime.Platform;
import org.eclipse.pde.internal.core.ischema.IDocumentSection;
import org.eclipse.pde.internal.core.ischema.ISchema;
import org.eclipse.pde.internal.core.ischema.ISchemaAttribute;
import org.eclipse.pde.internal.core.ischema.ISchemaElement;
import org.eclipse.pde.internal.core.ischema.ISchemaInclude;
import org.eclipse.pde.internal.core.ischema.ISchemaRestriction;
import org.eclipse.pde.internal.core.ischema.ISchemaSimpleType;
import org.eclipse.pde.internal.core.schema.ChoiceRestriction;
import org.eclipse.pde.internal.core.schema.DocumentSection;
import org.eclipse.pde.internal.core.schema.SchemaRootElement;
import org.osgi.framework.Bundle;

public class SchemaTransformer {
    private static final String PLATFORM_PLUGIN = "org.eclipse.platform";
    private static final String PLATFORM_PLUGIN_DOC = "org.eclipse.platform.doc.isv";
    private static final String SCHEMA_CSS = "schema.css";
    private static final String PLATFORM_CSS = "book.css";
    public static final byte TEMP = 0;
    public static final byte BUILD = 1;
    private byte fCssPurpose;
    private PrintWriter fWriter;
    private ISchema fSchema;
    private URL fCssURL;

    public void transform(ISchema schema, PrintWriter out) {
        this.transform(schema, out, null, (byte)0);
    }

    public void transform(ISchema schema, PrintWriter out, URL cssURL, byte cssPurpose) {
        this.fSchema = schema;
        this.fWriter = out;
        this.fCssPurpose = cssPurpose;
        this.setCssURL(cssURL);
        this.printHTMLContent();
    }

    private void setCssURL(URL cssURL) {
        try {
            if (cssURL != null) {
                this.fCssURL = FileLocator.resolve((URL)cssURL);
            }
        }
        catch (IOException iOException) {}
        if (this.fCssURL == null && this.fCssPurpose != 1) {
            this.fCssURL = this.getResourceURL(this.getProductPlugin(), PLATFORM_CSS);
        }
        if (this.fCssURL == null && this.fCssPurpose != 1) {
            this.fCssURL = this.getResourceURL("org.eclipse.pde.core", PLATFORM_CSS);
        }
    }

    private String getCssURL() {
        return this.fCssURL != null ? this.fCssURL.toString() : "../../book.css";
    }

    private String getSchemaCssURL() {
        if (this.fCssPurpose == 1) {
            return "../../schema.css";
        }
        URL url = this.getResourceURL(PLATFORM_PLUGIN_DOC, SCHEMA_CSS);
        if (url == null) {
            url = this.getResourceURL("org.eclipse.pde.core", SCHEMA_CSS);
        }
        return url.toString();
    }

    private void printHTMLContent() {
        this.fWriter.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\">");
        this.fWriter.println("<HTML>");
        this.printHeader();
        this.printBody();
        this.fWriter.println("</HTML>");
    }

    private void printHeader() {
        this.fWriter.print("<HEAD>");
        this.fWriter.println("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">");
        this.fWriter.println("<title>" + this.fSchema.getName() + "</title>");
        this.printStyles();
        this.fWriter.println("</HEAD>");
    }

    private void printStyles() {
        this.fWriter.println("<style type=\"text/css\">@import url(\"" + this.getCssURL() + "\");</style>");
        this.fWriter.println("<style type=\"text/css\">@import url(\"" + this.getSchemaCssURL() + "\");</style>");
    }

    private URL getResourceURL(String bundleID, String resourcePath) {
        try {
            URL entry;
            Bundle bundle = Platform.getBundle((String)bundleID);
            if (bundle != null && (entry = bundle.getEntry(resourcePath)) != null) {
                return FileLocator.toFileURL((URL)entry);
            }
        }
        catch (IOException iOException) {}
        return null;
    }

    private void printBody() {
        this.fWriter.println("<BODY>");
        this.fWriter.println("<H1 style=\"text-align:center\">" + this.fSchema.getName() + "</H1>");
        if (this.fSchema.isDeperecated()) {
            this.fWriter.print("<div style=\"border: 1px solid #990000; padding: 5px; text-align: center; color: red;\">");
            this.fWriter.print("This extension point is deprecated");
            String suggestion = this.fSchema.getDeprecatedSuggestion();
            if (suggestion != null) {
                this.fWriter.print(", use <i>" + suggestion + "</i> as a replacement.");
            }
            this.fWriter.println("</div>");
        }
        if (this.fSchema.isInternal()) {
            this.fWriter.print("<div style=\"border: 1px solid #990000; padding: 5px; text-align: center; color: red;\">");
            this.fWriter.print("This extension point is internal");
            this.fWriter.println("</div>");
        }
        this.fWriter.println("<p></p>");
        this.fWriter.print("<h6 class=\"CaptionFigColumn SchemaHeader\">Identifier: </h6>");
        this.fWriter.print(this.fSchema.getQualifiedPointId());
        this.fWriter.println("<p></p>");
        this.transformSection("Since:", "since");
        this.transformDescription();
        this.fWriter.println("<h6 class=\"CaptionFigColumn SchemaHeader\">Configuration Markup:</h6>");
        this.transformMarkup();
        this.transformSection("Examples:", "examples");
        this.transformSection("API Information:", "apiinfo");
        this.transformSection("Supplied Implementation:", "implementation");
        this.fWriter.println("<br>");
        this.fWriter.println("<p class=\"note SchemaCopyright\">");
        this.transformSection(null, "copyright");
        this.fWriter.println("</p>");
        this.fWriter.println("</BODY>");
    }

    private void transformSection(String title, String sectionId) {
        DocumentSection section = this.findSection(this.fSchema.getDocumentSections(), sectionId);
        if (section == null) {
            return;
        }
        String description = section.getDescription();
        if (description == null || description.trim().length() == 0) {
            return;
        }
        if (title != null) {
            this.fWriter.print("<h6 class=\"CaptionFigColumn SchemaHeader\">" + title + " </h6>");
        }
        this.transformText(description);
        this.fWriter.println();
        if (!sectionId.equals("copyright")) {
            this.fWriter.println("<p></p>");
        }
        this.fWriter.println();
    }

    private DocumentSection findSection(IDocumentSection[] sections, String sectionId) {
        int i = 0;
        while (i < sections.length) {
            if (sections[i].getSectionId().equalsIgnoreCase(sectionId)) {
                return (DocumentSection)sections[i];
            }
            ++i;
        }
        return null;
    }

    /*
     * Unable to fully structure code
     */
    private void transformText(String text) {
        if (text == null) {
            return;
        }
        preformatted = false;
        inTag = false;
        inCstring = false;
        i = 0;
        while (i < text.length()) {
            c = text.charAt(i);
            if (c != '<') ** GOTO lbl-1000
            if (this.isPreStart(text, i)) {
                this.fWriter.print("<pre class=\"Example\"><span class=\"code SchemaTag\">");
                i += 4;
                preformatted = true;
            } else if (this.isPreEnd(text, i)) {
                this.fWriter.print("</span></pre>");
                i += 5;
                preformatted = false;
                inTag = false;
                inCstring = false;
            } else if (preformatted) {
                switch (c) {
                    case '<': {
                        inTag = true;
                        this.fWriter.print("&lt;");
                        break;
                    }
                    case '>': {
                        this.fWriter.print("&gt;");
                        inTag = false;
                        inCstring = false;
                        break;
                    }
                    case '&': {
                        this.fWriter.print("&amp;");
                        break;
                    }
                    case '\'': {
                        this.fWriter.print("&apos;");
                        break;
                    }
                    case '\"': {
                        if (inTag) {
                            if (inCstring) {
                                this.fWriter.print("&quot;");
                                this.fWriter.print("</span><span class=\"code SchemaTag\">");
                                inCstring = false;
                                break;
                            }
                            inCstring = true;
                            this.fWriter.print("</span><span class=\"code SchemaCstring\">");
                            this.fWriter.print("&quot;");
                            break;
                        }
                        this.fWriter.print("\"");
                        break;
                    }
                    default: {
                        this.fWriter.print(c);
                        break;
                    }
                }
            } else {
                this.fWriter.print(c);
            }
            ++i;
        }
    }

    private void transformDescription() {
        this.fWriter.print("<h6 class=\"CaptionFigColumn SchemaHeader\">Description: </h6>");
        this.transformText(this.fSchema.getDescription());
        ISchemaInclude[] includes = this.fSchema.getIncludes();
        int i = 0;
        while (i < includes.length) {
            ISchema ischema = includes[i].getIncludedSchema();
            if (ischema != null) {
                this.fWriter.println("<p>");
                this.transformText(ischema.getDescription());
                this.fWriter.println("</p>");
            }
            ++i;
        }
        this.fWriter.println("<p></p>");
    }

    private void transformMarkup() {
        this.fWriter.println("<p></p>");
        ISchemaElement[] elements = this.fSchema.getResolvedElements();
        int i = 0;
        while (i < elements.length) {
            this.transformElement(elements[i]);
            ++i;
        }
    }

    private void transformElement(ISchemaElement element) {
        String name = element.getName();
        String dtd = element.getDTDRepresentation(true);
        String nameLink = "<a name=\"e." + name + "\">" + name + "</a>";
        if (element.isDeprecated() && !(element instanceof SchemaRootElement)) {
            this.fWriter.print("<div style=\"color: red; font-style: italic;\">The <b>" + name + "</b> element is deprecated</div> ");
        }
        this.fWriter.print("<p class=\"code SchemaDtd\">&lt;!ELEMENT " + nameLink + " " + dtd);
        this.fWriter.println("&gt;</p>");
        ISchemaAttribute[] attributes = element.getAttributes();
        if (attributes.length > 0) {
            this.fWriter.println("<p class=\"code SchemaDtd\">&lt;!ATTLIST " + name + "</p>");
            int maxWidth = this.calculateMaxAttributeWidth(element.getAttributes());
            int i = 0;
            while (i < attributes.length) {
                this.appendAttlist(attributes[i], maxWidth);
                ++i;
            }
            this.fWriter.println("&gt;</p>");
        }
        this.fWriter.println("<p></p>");
        String description = element.getDescription();
        if (description != null && description.trim().length() > 0) {
            String elementType = this.containsParagraph(description) ? "div" : "p";
            this.fWriter.println("<" + elementType + " class=\"ConfigMarkupElementDesc\">");
            this.transformText(description);
            this.fWriter.println("</" + elementType + ">");
        }
        if (attributes.length == 0) {
            this.fWriter.println("<br><br>");
            return;
        }
        if (description != null && description.trim().length() > 0) {
            this.fWriter.println("<br>");
        }
        this.fWriter.println("<ul class=\"ConfigMarkupAttlistDesc\">");
        int i = 0;
        while (i < attributes.length) {
            ISchemaAttribute att = attributes[i];
            if (!name.equals("extension") || att.getDescription() != null && att.getDescription().trim().length() != 0) {
                this.fWriter.print("<li>");
                if (att.isDeprecated()) {
                    this.fWriter.print("<i style=\"color: red;\">Deprecated</i> ");
                }
                this.fWriter.print("<b>" + att.getName() + "</b> - ");
                this.transformText(att.getDescription());
                this.fWriter.println("</li>");
            }
            ++i;
        }
        this.fWriter.println("</ul>");
        this.fWriter.print("<br>");
    }

    private boolean containsParagraph(String input) {
        if (input.indexOf("<p>") != -1) {
            return true;
        }
        return input.indexOf("</p>") != -1;
    }

    private void appendAttlist(ISchemaAttribute att, int maxWidth) {
        String typeName;
        this.fWriter.print("<p class=\"code SchemaDtdAttlist\">");
        this.fWriter.print(att.getName());
        int delta = maxWidth - att.getName().length();
        int i = 0;
        while (i < delta + 1) {
            this.fWriter.print("&nbsp;");
            ++i;
        }
        ISchemaSimpleType type = att.getType();
        ISchemaRestriction restriction = null;
        boolean choices = false;
        if (type != null) {
            restriction = type.getRestriction();
        }
        String string = typeName = type != null ? type.getName().toLowerCase(Locale.ENGLISH) : "string";
        if (typeName.equals("boolean")) {
            this.fWriter.print("(true | false) ");
            choices = true;
        } else if (att.getKind() == 3) {
            this.fWriter.print("IDREF ");
        } else if (restriction != null) {
            this.appendRestriction(restriction);
            choices = true;
        } else {
            this.fWriter.print("CDATA ");
        }
        if (att.getUse() == 1) {
            if (!choices) {
                this.fWriter.print("#REQUIRED");
            }
        } else if (att.getUse() == 2) {
            this.fWriter.print("\"" + att.getValue() + "\"");
        } else if (!choices) {
            this.fWriter.print("#IMPLIED");
        }
        this.fWriter.print("</p>");
    }

    private void appendRestriction(ISchemaRestriction restriction) {
        if (restriction instanceof ChoiceRestriction) {
            String[] choices = ((ChoiceRestriction)restriction).getChoicesAsStrings();
            this.fWriter.print("(");
            int i = 0;
            while (i < choices.length) {
                if (i > 0) {
                    this.fWriter.print("|");
                }
                this.fWriter.print(choices[i]);
                ++i;
            }
            this.fWriter.print(") ");
        }
    }

    private boolean isPreEnd(String text, int loc) {
        if (loc + 5 >= text.length()) {
            return false;
        }
        return text.substring(loc, loc + 6).toLowerCase(Locale.ENGLISH).equals("</pre>");
    }

    private boolean isPreStart(String text, int loc) {
        if (loc + 4 >= text.length()) {
            return false;
        }
        return text.substring(loc, loc + 5).toLowerCase(Locale.ENGLISH).equals("<pre>");
    }

    private int calculateMaxAttributeWidth(ISchemaAttribute[] attributes) {
        int width = 0;
        int i = 0;
        while (i < attributes.length) {
            width = Math.max(width, attributes[i].getName().length());
            ++i;
        }
        return width;
    }

    private String getProductPlugin() {
        Bundle plugin;
        IProduct product = Platform.getProduct();
        if (product != null && (plugin = product.getDefiningBundle()) != null) {
            return plugin.getSymbolicName();
        }
        return PLATFORM_PLUGIN;
    }
}

