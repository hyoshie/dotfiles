NAME = simudack

CXX = c++
CXXFLAGS = -Wall \
		   -Werror \
		   -Wextra \
		   -Wshadow \
		   -std=c++14 \
		   -pedantic \
		   $(INCS) \
		   $(NULL)

INCDIR =  \
		  $(NULL)
INCS = $(addprefix -I, $(INCDIR))

SRCDIR	= src
SRCS = $(shell find $(SRCDIR) -name '*.cpp')

OBJDIR	= obj
OBJS 	= $(addprefix $(OBJDIR)/, $(notdir $(SRCS:.cpp=.o)))

DEPS = $(OBJS:.o=.d)

.PHONY: all
all: $(NAME)

-include $(DEPS)

$(NAME): $(OBJDIR) $(OBJS)
	$(CXX) $(CXXFLAGS) $(OBJS) -o $@
$(OBJDIR)/%.o : $(SRCDIR)/%.cpp
	$(CXX) $(CXXFLAGS) -MMD -MP -c $< -o $@

.PHONY: run
run: $(NAME)
	./$(NAME)

.PHONY: sketch
sketch:
	$(CXX) sketch/main.cpp -o sketch/a.out
	./sketch/a.out

.PHONY: clean
clean:
	$(RM) $(OBJS) $(DEPS)

.PHONY: fclean
fclean: clean
	$(RM) $(NAME)

.PHONY: re
re: fclean all

.PHONY: init
init: 
	mkdir src obj sketch
	touch src/main.cpp
	touch sketch/main.cpp

# Googleテスト
# ROOT_DIR = ../..
# GTEST_DIR = $(ROOT_DIR)/tests/googletest-release-1.12.1

# TEST_SRCS = $(shell find gtest/src -name '*.cpp')

# LDFLAGS = -L$(GTEST_DIR)/lib \
# 		  -L. \
# 		  -L$(UTILITY_DIR) \
# 		  $(NULL)

# LDLIBS = -lgtest \
# 		 -lgtest_main \
# 		 -lpthread \
# 		 $(NAME) \
# 		 $(LIB_UTILITY) \
# 		 $(LIB_CONFIG) \
# 		 $(NULL)

# $(GTEST_DIR):
# 	$(MAKE) -C $(ROOT_DIR) setup_gtest

# .PHONY: test
# test: INCS += -I$(GTEST_DIR)/googletest/include
# test: $(GTEST_DIR) $(NAME) $(LIB_UTILITY) $(LIB_CONFIG)
# 	clang++ -std=c++11 $(INCS) $(TEST_SRCS) $(LDFLAGS) $(LDLIBS) -o test
# 	-@./test
# 	@$(RM) test
