/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.build.tasks;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.PropertyResourceBundle;
import java.util.StringTokenizer;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.eclipse.pde.internal.build.tasks.Config;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public class JNLPGenerator
extends DefaultHandler {
    private SAXParser parser;
    private final File featureRoot;
    private final String codebase;
    private final String j2se;
    private static final SAXParserFactory parserFactory = SAXParserFactory.newInstance();
    private PrintWriter out;
    private String destination;
    private String provider;
    private String label;
    private String version;
    private String id;
    private String description;
    private boolean resourceWritten = false;
    private String currentOS = null;
    private String currentArch = null;
    private Locale locale = null;
    private PropertyResourceBundle nlsBundle = null;
    private final boolean generateOfflineAllowed;
    private Config[] configs;

    public static void main(String[] args) {
        JNLPGenerator generator = new JNLPGenerator(args[0], args[1], args[2], args[3]);
        generator.process();
    }

    public JNLPGenerator(String feature, String destination, String codebase, String j2se) {
        this(feature, destination, codebase, j2se, Locale.getDefault(), true, null);
    }

    public JNLPGenerator(String feature, String destination, String codebase, String j2se, Locale locale, boolean generateOfflineAllowed, String configs) {
        this.featureRoot = new File(feature);
        this.destination = destination;
        this.codebase = codebase;
        this.j2se = j2se;
        this.locale = locale;
        this.generateOfflineAllowed = generateOfflineAllowed;
        try {
            parserFactory.setNamespaceAware(true);
            this.parser = parserFactory.newSAXParser();
        }
        catch (ParserConfigurationException e) {
            System.out.println(e);
        }
        catch (SAXException e) {
            System.out.println(e);
        }
        this.setConfigInfo(configs);
    }

    public void process() {
        InputStream in = null;
        try {
            ZipFile featureArchive = null;
            InputStream nlsStream = null;
            if (this.featureRoot.isFile()) {
                featureArchive = new ZipFile(this.featureRoot);
                nlsStream = this.getNLSStream(featureArchive);
                ZipEntry featureXML = featureArchive.getEntry("feature.xml");
                in = featureArchive.getInputStream(featureXML);
            } else {
                nlsStream = this.getNLSStream(this.featureRoot);
                in = new BufferedInputStream(new FileInputStream(new File(this.featureRoot, "feature.xml")));
            }
            try {
                if (nlsStream != null) {
                    this.nlsBundle = new PropertyResourceBundle(nlsStream);
                    nlsStream.close();
                }
            }
            catch (IOException iOException) {}
            try {
                try {
                    this.parser.parse(new InputSource(in), (DefaultHandler)this);
                    this.writeResourceEpilogue();
                    this.writeEpilogue();
                }
                catch (SAXException sAXException) {
                    in.close();
                    if (this.out != null) {
                        this.out.close();
                    }
                    if (featureArchive != null) {
                        featureArchive.close();
                    }
                }
            }
            finally {
                in.close();
                if (this.out != null) {
                    this.out.close();
                }
                if (featureArchive != null) {
                    featureArchive.close();
                }
            }
        }
        catch (IOException iOException) {}
    }

    private InputStream getNLSStream(File root) {
        String appendix = ".properties";
        String[] potentials = this.createNLSPotentials();
        HashMap<String, File> validEntries = new HashMap<String, File>();
        File[] files = root.listFiles();
        int i = 0;
        while (i < files.length) {
            String filename = files[i].getName();
            if (filename.endsWith(appendix)) {
                validEntries.put(filename, files[i]);
            }
            ++i;
        }
        BufferedInputStream stream = null;
        if (validEntries.size() > 0) {
            int i2 = 0;
            while (i2 < potentials.length) {
                File file = (File)validEntries.get(potentials[i2]);
                if (file != null) {
                    try {
                        stream = new BufferedInputStream(new FileInputStream(file));
                        break;
                    }
                    catch (IOException iOException) {}
                }
                ++i2;
            }
            if (stream == null) {
                File file = (File)validEntries.values().iterator().next();
                try {
                    stream = new BufferedInputStream(new FileInputStream(file));
                }
                catch (IOException iOException) {}
            }
        }
        return stream;
    }

    private InputStream getNLSStream(ZipFile featureArchive) {
        String appendix = ".properties";
        String[] potentials = this.createNLSPotentials();
        HashMap<String, ZipEntry> validEntries = new HashMap<String, ZipEntry>();
        Enumeration<? extends ZipEntry> enumeration = featureArchive.entries();
        while (enumeration.hasMoreElements()) {
            ZipEntry entry = enumeration.nextElement();
            String entryName = entry.getName();
            if (!entryName.endsWith(appendix)) continue;
            validEntries.put(entryName, entry);
        }
        InputStream stream = null;
        if (validEntries.size() > 0) {
            int i = 0;
            while (i < potentials.length) {
                ZipEntry entry = (ZipEntry)validEntries.get(potentials[i]);
                if (entry != null) {
                    try {
                        stream = featureArchive.getInputStream(entry);
                        break;
                    }
                    catch (IOException iOException) {}
                }
                ++i;
            }
            if (stream == null) {
                ZipEntry entry = (ZipEntry)validEntries.values().iterator().next();
                try {
                    stream = featureArchive.getInputStream(entry);
                }
                catch (IOException iOException) {}
            }
        }
        return stream;
    }

    private String[] createNLSPotentials() {
        String suffix = "feature";
        String appendix = ".properties";
        String language = this.locale.getLanguage();
        String country = this.locale.getCountry();
        String variant = this.locale.getVariant();
        String potential1 = String.valueOf('_') + language + '_' + country + '_' + variant;
        String potential2 = String.valueOf('_') + language + '_' + country;
        String potential3 = String.valueOf('_') + language;
        String potential4 = "";
        String[] potentials = new String[]{potential1, potential2, potential3, potential4};
        int i = 0;
        while (i < potentials.length) {
            potentials[i] = String.valueOf(suffix) + potentials[i] + appendix;
            ++i;
        }
        return potentials;
    }

    public void startElement(String uri, String localName, String qName, Attributes attributes) throws SAXException {
        try {
            if ("feature".equals(localName)) {
                this.processFeature(attributes);
            } else if ("includes".equals(localName)) {
                this.processIncludes(attributes);
            } else if ("description".equals(localName)) {
                this.processDescription(attributes);
            } else if ("plugin".equals(localName)) {
                this.processPlugin(attributes);
            }
        }
        catch (IOException e) {
            throw new SAXException(e);
        }
    }

    private void processPlugin(Attributes attributes) throws IOException {
        this.writePrologue();
        String pluginId = attributes.getValue("id");
        String pluginVersion = attributes.getValue("version");
        String os = attributes.getValue("os");
        String ws = attributes.getValue("ws");
        String arch = attributes.getValue("arch");
        if (this.isValidEnvironment(os, ws, arch)) {
            this.writeResourcePrologue(os, ws, arch);
            this.out.println("\t\t<jar href=\"plugins/" + pluginId + "_" + pluginVersion + ".jar\"/>");
        }
    }

    private void writeResourceEpilogue() {
        if (!this.resourceWritten) {
            return;
        }
        this.out.println("\t</resources>");
        this.resourceWritten = false;
        this.currentOS = null;
    }

    private void writeResourcePrologue(String os, String ws, String arch) {
        if (os == null) {
            os = ws;
        }
        os = this.convertOS(os);
        arch = this.convertArch(arch);
        if (this.resourceWritten && this.osMatch(os) && this.archMatch(arch)) {
            return;
        }
        if (this.resourceWritten) {
            this.writeResourceEpilogue();
        }
        this.out.println("\t<resources" + (os == null ? "" : " os=\"" + os + "\"") + (arch == null ? "" : " arch=\"" + arch + "\"") + ">");
        this.resourceWritten = true;
        this.currentOS = os;
        this.currentArch = arch;
    }

    private String convertOS(String os) {
        if (os == null) {
            return null;
        }
        if ("win32".equalsIgnoreCase(os)) {
            return "Windows";
        }
        if ("macosx".equalsIgnoreCase(os)) {
            return "Mac";
        }
        if ("linux".equalsIgnoreCase(os)) {
            return "Linux";
        }
        if ("solaris".equalsIgnoreCase(os)) {
            return "Solaris";
        }
        if ("hpux".equalsIgnoreCase(os)) {
            return "HP-UX";
        }
        if ("aix".equalsIgnoreCase(os)) {
            return "AIX";
        }
        return os;
    }

    private boolean osMatch(String os) {
        if (os == this.currentOS) {
            return true;
        }
        if (os == null) {
            return false;
        }
        return os.equals(this.currentOS);
    }

    private String convertArch(String arch) {
        if (arch == null) {
            return null;
        }
        if ("x86".equals(arch)) {
            return "x86";
        }
        if ("PA_RISC".equals(arch)) {
            return "PA_RISC";
        }
        if ("ppc".equals(arch)) {
            return "ppc";
        }
        if ("sparc".equals(arch)) {
            return "sparc";
        }
        if ("x86_64".equals(arch)) {
            return "x86_64";
        }
        if ("ia64".equals(arch)) {
            return "ia64";
        }
        if ("ia64_32".equals(arch)) {
            return "ia64_32";
        }
        return arch;
    }

    private boolean archMatch(String arch) {
        if (arch == this.currentOS) {
            return true;
        }
        if (arch == null) {
            return false;
        }
        return arch.equals(this.currentArch);
    }

    private void processDescription(Attributes attributes) {
    }

    private void processIncludes(Attributes attributes) throws IOException {
        this.writePrologue();
        String inclusionId = attributes.getValue("id");
        String inclusionVersion = attributes.getValue("version");
        String name = attributes.getValue("name");
        String os = attributes.getValue("os");
        String ws = attributes.getValue("ws");
        String arch = attributes.getValue("arch");
        if (this.isValidEnvironment(os, ws, arch)) {
            this.writeResourcePrologue(os, ws, arch);
            this.out.print("\t\t<extension ");
            if (name != null) {
                this.out.print("name=\"" + name + "\" ");
            }
            if (inclusionId != null) {
                this.out.print("href=\"features/" + inclusionId);
                if (inclusionVersion != null) {
                    this.out.print(String.valueOf('_') + inclusionVersion);
                }
                this.out.print(".jnlp\" ");
            }
            this.out.println("/>");
        }
    }

    private void processFeature(Attributes attributes) {
        this.id = attributes.getValue("id");
        this.version = attributes.getValue("version");
        this.label = this.processNLS(attributes.getValue("label"));
        this.provider = this.processNLS(attributes.getValue("provider-name"));
    }

    private String processNLS(String string) {
        String dflt;
        if (string == null) {
            return null;
        }
        if (!(string = string.trim()).startsWith("%")) {
            return string;
        }
        if (string.startsWith("%%")) {
            return string.substring(1);
        }
        int index = string.indexOf(" ");
        String key = index == -1 ? string : string.substring(0, index);
        String string2 = dflt = index == -1 ? string : string.substring(index + 1);
        if (this.nlsBundle == null) {
            return dflt;
        }
        try {
            return this.nlsBundle.getString(key.substring(1));
        }
        catch (MissingResourceException missingResourceException) {
            return dflt;
        }
    }

    private void writePrologue() throws IOException {
        if (this.out != null) {
            return;
        }
        if (this.destination == null) {
            this.featureRoot.getParentFile();
            this.destination = String.valueOf(this.featureRoot.getParent()) + '/';
        }
        if (this.destination.endsWith("/") || this.destination.endsWith("\\")) {
            this.destination = new File(this.featureRoot.getParentFile(), String.valueOf(this.id) + "_" + this.version + ".jnlp").getAbsolutePath();
        }
        this.out = new PrintWriter(new BufferedOutputStream(new FileOutputStream(this.destination)));
        this.writePrologue();
        this.out.println("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
        this.out.print("<jnlp spec=\"1.0+\" ");
        if (this.codebase != null) {
            this.out.print("codebase=\"" + this.codebase);
        }
        this.out.println("\">");
        this.out.println("\t<information>");
        if (this.label != null) {
            this.out.println("\t\t<title>" + this.label + "</title>");
        }
        if (this.provider != null) {
            this.out.println("\t\t<vendor>" + this.provider + "</vendor>");
        }
        if (this.description != null) {
            this.out.println("\t\t<description>" + this.description + "</description>");
        }
        if (this.generateOfflineAllowed) {
            this.out.println("\t\t<offline-allowed/>");
        }
        this.out.println("\t</information>");
        this.out.println("\t<security>");
        this.out.println("\t\t<all-permissions/>");
        this.out.println("\t</security>");
        this.out.println("\t<component-desc/>");
        this.out.println("\t<resources>");
        this.out.println("\t\t<j2se version=\"" + this.j2se + "\" />");
        this.out.println("\t</resources>");
    }

    private void writeEpilogue() {
        this.out.println("</jnlp>");
    }

    private boolean isMatching(String candidateValues, String siteValues) {
        if (candidateValues == null) {
            return true;
        }
        if (siteValues == null) {
            return false;
        }
        if ("*".equals(candidateValues)) {
            return true;
        }
        if ("".equals(candidateValues)) {
            return true;
        }
        StringTokenizer siteTokens = new StringTokenizer(siteValues, ",");
        while (siteTokens.hasMoreTokens()) {
            StringTokenizer candidateTokens = new StringTokenizer(candidateValues, ",");
            String siteValue = siteTokens.nextToken();
            while (candidateTokens.hasMoreTokens()) {
                if (!siteValue.equalsIgnoreCase(candidateTokens.nextToken())) continue;
                return true;
            }
        }
        return false;
    }

    private boolean isValidEnvironment(String os, String ws, String arch) {
        if (this.configs.length == 0) {
            return true;
        }
        int i = 0;
        while (i < this.configs.length) {
            if (this.isMatching(os, this.configs[i].getOs()) && this.isMatching(ws, this.configs[i].getWs()) && this.isMatching(arch, this.configs[i].getArch())) {
                return true;
            }
            ++i;
        }
        return false;
    }

    private void setConfigInfo(String spec) {
        if (spec != null && spec.startsWith("$")) {
            this.configs = new Config[0];
            return;
        }
        if (spec == null) {
            this.configs = new Config[]{Config.genericConfig()};
            return;
        }
        StringTokenizer tokens = new StringTokenizer(spec, "&");
        int configNbr = tokens.countTokens();
        ArrayList<Config> configInfos = new ArrayList<Config>(configNbr);
        while (tokens.hasMoreElements()) {
            String aConfig = tokens.nextToken();
            StringTokenizer configTokens = new StringTokenizer(aConfig, ",");
            if (configTokens.countTokens() != 3) continue;
            Config toAdd = new Config(configTokens.nextToken().trim(), configTokens.nextToken().trim(), configTokens.nextToken().trim());
            if (toAdd.equals(Config.genericConfig())) {
                toAdd = Config.genericConfig();
            }
            configInfos.add(toAdd);
        }
        if (configInfos.size() == 0) {
            configInfos.add(Config.genericConfig());
        }
        this.configs = configInfos.toArray(new Config[configInfos.size()]);
    }
}

