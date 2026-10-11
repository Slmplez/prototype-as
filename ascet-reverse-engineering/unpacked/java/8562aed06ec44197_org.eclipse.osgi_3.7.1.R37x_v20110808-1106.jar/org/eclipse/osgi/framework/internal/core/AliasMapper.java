/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.internal.core;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.osgi.framework.debug.Debug;
import org.eclipse.osgi.framework.internal.core.Tokenizer;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class AliasMapper {
    private static Map<String, Object> processorAliasTable;
    private static Map<String, Object> osnameAliasTable;
    static /* synthetic */ Class class$0;

    private static synchronized Map<String, Object> getProcessorAliasTable() {
        if (processorAliasTable == null) {
            InputStream in;
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.osgi.framework.internal.core.AliasMapper");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((in = clazz.getResourceAsStream("processor.aliases")) != null) {
                try {
                    processorAliasTable = AliasMapper.initAliases(in);
                }
                catch (Throwable throwable) {
                    try {
                        in.close();
                    }
                    catch (IOException iOException) {}
                    throw throwable;
                }
                try {
                    in.close();
                }
                catch (IOException iOException) {}
            }
        }
        return processorAliasTable;
    }

    private static synchronized Map<String, Object> getOSNameAliasTable() {
        if (osnameAliasTable == null) {
            InputStream in;
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.osgi.framework.internal.core.AliasMapper");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((in = clazz.getResourceAsStream("osname.aliases")) != null) {
                try {
                    osnameAliasTable = AliasMapper.initAliases(in);
                }
                catch (Throwable throwable) {
                    try {
                        in.close();
                    }
                    catch (IOException iOException) {}
                    throw throwable;
                }
                try {
                    in.close();
                }
                catch (IOException iOException) {}
            }
        }
        return osnameAliasTable;
    }

    public String aliasProcessor(String processor) {
        String alias;
        processor = processor.toLowerCase();
        Map<String, Object> aliases = AliasMapper.getProcessorAliasTable();
        if (aliases != null && (alias = (String)aliases.get(processor)) != null) {
            processor = alias;
        }
        return processor;
    }

    public Object aliasOSName(String osname) {
        Object aliasObject;
        osname = osname.toLowerCase();
        Map<String, Object> aliases = AliasMapper.getOSNameAliasTable();
        if (aliases != null && (aliasObject = aliases.get(osname)) != null) {
            if (aliasObject instanceof String) {
                osname = (String)aliasObject;
            } else {
                return aliasObject;
            }
        }
        return osname;
    }

    protected static Map<String, Object> initAliases(InputStream in) {
        HashMap<String, Object> aliases;
        block8: {
            aliases = new HashMap<String, Object>(37);
            try {
                String line;
                BufferedReader br;
                try {
                    br = new BufferedReader(new InputStreamReader(in, "UTF8"));
                }
                catch (UnsupportedEncodingException unsupportedEncodingException) {
                    br = new BufferedReader(new InputStreamReader(in));
                }
                while ((line = br.readLine()) != null) {
                    String alias;
                    Tokenizer tokenizer = new Tokenizer(line);
                    String master = tokenizer.getString("# \t");
                    if (master == null) continue;
                    aliases.put(master.toLowerCase(), master);
                    while ((alias = tokenizer.getString("# \t")) != null) {
                        ArrayList<String> newMaster;
                        String lowerCaseAlias = alias.toLowerCase();
                        Object storedMaster = aliases.get(lowerCaseAlias);
                        if (storedMaster == null) {
                            aliases.put(lowerCaseAlias, master);
                            continue;
                        }
                        if (storedMaster instanceof String) {
                            newMaster = new ArrayList<String>();
                            newMaster.add((String)storedMaster);
                            newMaster.add(master);
                            aliases.put(lowerCaseAlias, newMaster);
                            continue;
                        }
                        newMaster = (ArrayList<String>)storedMaster;
                        newMaster.add(master);
                    }
                }
            }
            catch (IOException e) {
                if (!Debug.DEBUG_GENERAL) break block8;
                Debug.printStackTrace(e);
            }
        }
        return aliases;
    }
}

