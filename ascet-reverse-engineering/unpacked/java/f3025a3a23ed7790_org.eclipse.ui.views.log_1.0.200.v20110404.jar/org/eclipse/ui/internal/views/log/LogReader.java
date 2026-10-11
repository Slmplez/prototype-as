/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.ui.IMemento
 */
package org.eclipse.ui.internal.views.log;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.internal.views.log.LogEntry;
import org.eclipse.ui.internal.views.log.LogSession;
import org.eclipse.ui.internal.views.log.TailInputStream;

class LogReader {
    private static final int SESSION_STATE = 10;
    public static final long MAX_FILE_LENGTH = 0x100000L;
    private static final int ENTRY_STATE = 20;
    private static final int SUBENTRY_STATE = 30;
    private static final int MESSAGE_STATE = 40;
    private static final int STACK_STATE = 50;
    private static final int TEXT_STATE = 60;
    private static final int UNKNOWN_STATE = 70;

    LogReader() {
    }

    public static LogSession parseLogFile(File file, List entries, IMemento memento) {
        LogSession currentSession;
        block40: {
            if (!file.exists()) {
                return null;
            }
            if (memento.getString("useLimit").equals("true") && memento.getInteger("limit") == 0) {
                return null;
            }
            ArrayList parents = new ArrayList();
            LogEntry current = null;
            LogSession session = null;
            int writerState = 70;
            StringWriter swriter = null;
            PrintWriter writer = null;
            int state = 70;
            currentSession = null;
            BufferedReader reader = null;
            try {
                String line0;
                reader = new BufferedReader(new InputStreamReader((InputStream)new TailInputStream(file, 0x100000L), "UTF-8"));
                while ((line0 = reader.readLine()) != null) {
                    LogEntry entry;
                    String line = line0.trim();
                    state = line.startsWith("!SESSION") ? 10 : (line.startsWith("!ENTRY") ? 20 : (line.startsWith("!SUBENTRY") ? 30 : (line.startsWith("!MESSAGE") ? 40 : (line.startsWith("!STACK") ? 50 : 60))));
                    if (state == 60) {
                        if (writer == null) continue;
                        if (swriter.getBuffer().length() > 0) {
                            writer.println();
                        }
                        writer.print(line0);
                        continue;
                    }
                    if (writer != null) {
                        LogReader.setData(current, session, writerState, swriter);
                        writerState = 70;
                        swriter = null;
                        writer.close();
                        writer = null;
                    }
                    if (state == 50) {
                        swriter = new StringWriter();
                        writer = new PrintWriter(swriter, true);
                        writerState = 50;
                        continue;
                    }
                    if (state == 10) {
                        session = new LogSession();
                        session.processLogLine(line);
                        swriter = new StringWriter();
                        writer = new PrintWriter(swriter, true);
                        writerState = 10;
                        if (!((Object)((Object)(currentSession = LogReader.updateCurrentSession(currentSession, session)))).equals((Object)session) || memento.getString("allSessions").equals("true")) continue;
                        entries.clear();
                        continue;
                    }
                    if (state == 20) {
                        if (currentSession == null) {
                            currentSession = new LogSession();
                        }
                        try {
                            entry = new LogEntry();
                            entry.setSession(currentSession);
                            entry.processEntry(line);
                            LogReader.setNewParent(parents, entry, 0);
                            current = entry;
                            LogReader.addEntry(current, entries, memento);
                        }
                        catch (ParseException parseException) {}
                        continue;
                    }
                    if (state == 30) {
                        if (parents.size() <= 0) continue;
                        try {
                            entry = new LogEntry();
                            entry.setSession(session);
                            int depth = entry.processSubEntry(line);
                            LogReader.setNewParent(parents, entry, depth);
                            current = entry;
                            LogEntry parent = (LogEntry)((Object)parents.get(depth - 1));
                            parent.addChild(entry);
                        }
                        catch (ParseException parseException) {}
                        continue;
                    }
                    if (state != 40) continue;
                    swriter = new StringWriter();
                    writer = new PrintWriter(swriter, true);
                    String message = "";
                    if (line.length() > 8) {
                        message = line.substring(9);
                    }
                    if (current != null) {
                        current.setMessage(message);
                    }
                    writerState = 40;
                }
                if (swriter != null && current != null && writerState == 50) {
                    writerState = 70;
                    current.setStack(swriter.toString());
                }
            }
            catch (FileNotFoundException fileNotFoundException) {
                try {
                    if (reader != null) {
                        reader.close();
                    }
                }
                catch (IOException iOException) {}
                if (writer != null) {
                    LogReader.setData(current, session, writerState, swriter);
                    writer.close();
                }
                break block40;
            }
            catch (IOException iOException) {
                try {}
                catch (Throwable throwable) {
                    try {
                        if (reader != null) {
                            reader.close();
                        }
                    }
                    catch (IOException iOException2) {}
                    if (writer != null) {
                        LogReader.setData(current, session, writerState, swriter);
                        writer.close();
                    }
                    throw throwable;
                }
                try {
                    if (reader != null) {
                        reader.close();
                    }
                }
                catch (IOException iOException3) {}
                if (writer != null) {
                    LogReader.setData(current, session, writerState, swriter);
                    writer.close();
                }
                break block40;
            }
            try {
                if (reader != null) {
                    reader.close();
                }
            }
            catch (IOException iOException) {}
            if (writer != null) {
                LogReader.setData(current, session, writerState, swriter);
                writer.close();
            }
        }
        return currentSession;
    }

    private static void setData(LogEntry current, LogSession session, int writerState, StringWriter swriter) {
        if (writerState == 50 && current != null) {
            current.setStack(swriter.toString());
        } else if (writerState == 10 && session != null) {
            session.setSessionData(swriter.toString());
        } else if (writerState == 40 && current != null) {
            StringBuffer sb = new StringBuffer(current.getMessage());
            String continuation = swriter.toString();
            if (continuation.length() > 0) {
                sb.append(System.getProperty("line.separator")).append(continuation);
            }
            current.setMessage(sb.toString());
        }
    }

    private static LogSession updateCurrentSession(LogSession currentSession, LogSession session) {
        if (currentSession == null) {
            return session;
        }
        Date currentDate = currentSession.getDate();
        Date sessionDate = session.getDate();
        if (currentDate == null && sessionDate != null) {
            return session;
        }
        if (currentDate != null && sessionDate == null) {
            return session;
        }
        if (currentDate != null && sessionDate != null && sessionDate.after(currentDate)) {
            return session;
        }
        return currentSession;
    }

    private static void addEntry(LogEntry entry, List entries, IMemento memento) {
        if (LogReader.isLogged(entry, memento)) {
            entries.add(entry);
            if (memento.getString("useLimit").equals("true")) {
                int limit = memento.getInteger("limit");
                if (entries.size() > limit) {
                    entries.remove(0);
                }
            }
        }
    }

    public static boolean isLogged(LogEntry entry, IMemento memento) {
        int severity = entry.getSeverity();
        switch (severity) {
            case 1: {
                return memento.getString("info").equals("true");
            }
            case 2: {
                return memento.getString("warning").equals("true");
            }
            case 4: {
                return memento.getString("error").equals("true");
            }
            case 0: {
                return memento.getString("ok").equals("true");
            }
        }
        return false;
    }

    private static void setNewParent(ArrayList parents, LogEntry entry, int depth) {
        if (depth + 1 > parents.size()) {
            parents.add(entry);
        } else {
            parents.set(depth, entry);
        }
    }
}

