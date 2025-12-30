#include <regex.h>
#include <string.h>

/*
    Return:
    1 -> match
    2 -> no match
    -1 -> regex err
*/

int regex_match(const char *pattern, const char *text) {
    regex_t regex;
    int result;

    result = regcomp(&regex, pattern, REG_EXTENDED);
    if (result != 0) {
        return -1;
    }

    result = regexec(&regex, text, 0, NULL, 0);
    regfree(&regex);

    if (result == 0) return 1;
    if (result == REG_NOMATCH) return 0;

    return -1;
}
