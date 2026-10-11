/*
 * Decompiled with CFR 0.152.
 */
package de.etas.util;

import de.etas.cebra.Cebra;
import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.RandomAccessFile;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Properties;

public class IniFile {
    public static final String DEFAULT_ENTRY = "<default>";
    private Hashtable sections;
    private boolean isInitialized;
    private String name;

    public IniFile(String fileName) {
        this(fileName, true);
    }

    public IniFile(String fileName, boolean load) {
        this.name = fileName;
        this.sections = new Hashtable();
        this.isInitialized = true;
        if (load) {
            this.readIniFile(fileName);
        }
    }

    public String getItemFromSection(String item, String section) {
        if (item == null) {
            return null;
        }
        if (section == null) {
            return null;
        }
        Properties aktTable = (Properties)this.sections.get(section);
        if (aktTable == null) {
            return null;
        }
        return aktTable.getProperty(item.toUpperCase(), null);
    }

    public String getName() {
        return this.name;
    }

    public Properties getSection(String sectionName) {
        if (!this.isInitialized) {
            return null;
        }
        if (sectionName == null) {
            return null;
        }
        return (Properties)this.sections.get(sectionName);
    }

    private Hashtable getSections() {
        if (!this.isInitialized) {
            return null;
        }
        return this.sections;
    }

    public final boolean isInitialized() {
        return this.isInitialized;
    }

    public boolean putItemToSection(String item, String section, String value) {
        if (value == null) {
            return false;
        }
        if (section == null) {
            return false;
        }
        if (item == null) {
            return false;
        }
        Properties aktTable = (Properties)this.sections.get(section);
        if (aktTable == null) {
            aktTable = new Properties();
            this.sections.put(section, aktTable);
        }
        aktTable.put(item.toUpperCase(), value);
        return true;
    }

    private boolean readIniFile(String fileName) {
        FileInputStream fileInStream = null;
        DataInputStream dataInStream = null;
        BufferedReader dataIn = null;
        if (fileName == null) {
            return false;
        }
        try {
            fileInStream = new FileInputStream(fileName);
        }
        catch (IOException iOException) {
            return false;
        }
        dataInStream = new DataInputStream(fileInStream);
        dataIn = new BufferedReader(new InputStreamReader(dataInStream));
        try {
            String zeile;
            Properties aktTable = null;
            while ((zeile = dataIn.readLine()) != null) {
                int pos;
                if ((zeile = zeile.trim()).length() == 0) continue;
                if (zeile.charAt(0) == '[' && zeile.charAt(zeile.length() - 1) == ']') {
                    String secName = zeile.substring(1, zeile.length() - 1);
                    aktTable = (Properties)this.sections.get(secName);
                    if (aktTable != null) continue;
                    aktTable = new Properties();
                    this.sections.put(secName, aktTable);
                    continue;
                }
                if (zeile.charAt(0) == ';' || aktTable == null || (pos = zeile.indexOf("=")) <= 0) continue;
                String entryName = zeile.substring(0, pos).trim();
                String entryVal = zeile.substring(pos + 1, zeile.length()).trim();
                aktTable.put(entryName.toUpperCase(), entryVal);
            }
        }
        catch (IOException iOException) {
            this.isInitialized = false;
        }
        catch (NullPointerException nullPointerException) {
            this.isInitialized = false;
        }
        catch (Exception ex) {
            this.isInitialized = false;
            Cebra.println(ex.toString());
        }
        try {
            fileInStream.close();
            dataIn.close();
            dataInStream.close();
        }
        catch (IOException iOException) {}
        return true;
    }

    public void save() {
        File fp = new File(this.name);
        if (fp.exists()) {
            fp.delete();
        }
        this.writeIniFile(this.name);
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setSection(String sectionName, Properties section) {
        if (!this.isInitialized) {
            return;
        }
        if (sectionName == null) {
            return;
        }
        this.sections.put(sectionName, section);
    }

    private void writeIniFile(String fileName) {
        RandomAccessFile fileOutStream;
        if (fileName == null) {
            return;
        }
        try {
            fileOutStream = new RandomAccessFile(fileName, "rw");
        }
        catch (IOException iOException) {
            return;
        }
        Enumeration sectionNames = this.sections.keys();
        try {
            while (sectionNames.hasMoreElements()) {
                String aktSection = (String)sectionNames.nextElement();
                String zeile = "[" + aktSection + "]" + Cebra.LF;
                fileOutStream.writeBytes(zeile);
                Hashtable aktTable = (Hashtable)this.sections.get(aktSection);
                Enumeration itemNames = aktTable.keys();
                while (itemNames.hasMoreElements()) {
                    String aktItem = (String)itemNames.nextElement();
                    String aktValue = (String)aktTable.get(aktItem);
                    zeile = String.valueOf(aktItem) + "\t= " + aktValue + Cebra.LF;
                    fileOutStream.writeBytes(zeile);
                }
                fileOutStream.writeBytes(Cebra.LF);
            }
        }
        catch (Exception exception) {}
        try {
            fileOutStream.close();
        }
        catch (Exception exception) {}
    }
}

